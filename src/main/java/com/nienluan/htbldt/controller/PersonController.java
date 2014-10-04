package com.nienluan.htbldt.controller;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.nienluan.htbldt.model.AnhDt;
import com.nienluan.htbldt.model.BinhLuan;
import com.nienluan.htbldt.model.BinhLuanDt;
import com.nienluan.htbldt.model.BlPhu;
import com.nienluan.htbldt.model.CauHinh;
import com.nienluan.htbldt.model.ChuoiTimKiem;
import com.nienluan.htbldt.model.DienThoai;
import com.nienluan.htbldt.model.DonGia;
import com.nienluan.htbldt.model.HangSx;
import com.nienluan.htbldt.model.HinhAnh;
import com.nienluan.htbldt.model.ItemBinhLuan;
import com.nienluan.htbldt.model.LoaiTk;
import com.nienluan.htbldt.model.PhanHeDt;
import com.nienluan.htbldt.model.TaiKhoan;
import com.nienluan.htbldt.model.ThongBao;
import com.nienluan.htbldt.service.AnhDtService;
import com.nienluan.htbldt.service.BinhLuanDtService;
import com.nienluan.htbldt.service.BinhLuanService;
import com.nienluan.htbldt.service.BlPhuService;
import com.nienluan.htbldt.service.CauHinhService;
import com.nienluan.htbldt.service.DienThoaiService;
import com.nienluan.htbldt.service.DonGiaService;
import com.nienluan.htbldt.service.HangSxService;
import com.nienluan.htbldt.service.HinhAnhService;
import com.nienluan.htbldt.service.LoaiTkService;
import com.nienluan.htbldt.service.PhanHeDtService;
import com.nienluan.htbldt.service.TaiKhoanService;
import com.nienluan.htbldt.service.ThongBaoService;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

@Controller
public class PersonController {

	@Autowired
	TaiKhoanService tai_khoan_service;

	@Autowired
	HinhAnhService hinh_anh_service;

	@Autowired
	HangSxService hang_sx_service;

	@Autowired
	LoaiTkService loai_tk_service;

	@Autowired
	PhanHeDtService phan_he_dt_service;

	@Autowired
	CauHinhService cau_hinh_serive;

	@Autowired
	DienThoaiService dien_thoai_service;

	@Autowired
	DonGiaService don_gia_service;

	@Autowired
	AnhDtService anh_dt_service;

	@Autowired
	ServletContext servletContext;

	@Autowired
	BinhLuanService binhLuanService;

	@Autowired
	BlPhuService blPhuService;

	@Autowired
	BinhLuanDtService binhLuanDtService;

	@Autowired
	ThongBaoService thongBaoService;
	
	/**
	 * Hàm này dùng để chuyển đến trang điều hướng cho hệ thống
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String directPage(Model model, HttpSession session) {
		List<DienThoai> dienThoais = dien_thoai_service.list();
		model.addAttribute("dienThoais", dienThoais);
		if (session.getAttribute("idDt") == null) {
			session.setAttribute("idDt", "");
		}
		ChuoiTimKiem chuoiTimKiem = new ChuoiTimKiem();
		model.addAttribute("chuoiTimKiem", chuoiTimKiem);
		BinhLuan binhLuan = new BinhLuan();
		model.addAttribute("binhLuan", binhLuan);
		
		List<ThongBao> thongBaos = thongBaoService.list();
		model.addAttribute("thongBaos", thongBaos);
		return "index";
	}

	/**
	 * Hàm này dùng để chuyển người dùng đến trang liên hệ
	 * 
	 * @return trả về trang contact
	 */
	@RequestMapping(value = "/lienhe", method = RequestMethod.GET)
	public String lienHe() {
		return "contact";
	}

	// ------------------Khu vực xử lý đăng nhập đăng xuất ----------------

	/**
	 * Hàm này tạo 1 đối tượng tài khoản để form đăng nhập sử dụng Lấy danh sách
	 * tài khoản gửi vào biến model để gửi qua view dangnhap
	 * 
	 * @param model
	 *            biến để gửi dữ liệu qua view dangnhap
	 * @return trả về trang đăng nhập
	 */
	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public String dangnhap(Model model) {
		TaiKhoan tai_khoan = new TaiKhoan();
		model.addAttribute("taiKhoan", tai_khoan);
		return "dangnhap";
	}

	/**
	 * Hàm này dùng kiểm tra thông tin của người dùng có khớp với CSDL để đăng
	 * nhập hay không
	 * 
	 * @param model
	 *            biến này dùng để lưu dữ liệu được chuyển qua lại giữa
	 *            controller và view
	 * @param taikhoan
	 *            biến này được lấy từ model, lưu những gì người dùng nhập ở
	 *            view
	 * @return trả về trang quản trị nếu loại tài khoản là 1 trả về trang đăng
	 *         nhập thành công nếu tài khoản khác 1 trả về trang đăng nhập nếu
	 *         đăng nhập thất bại
	 */
	@RequestMapping(value = "/dangnhap.do", method = RequestMethod.POST)
	public String dangnhap_do(Model model, @ModelAttribute TaiKhoan taikhoan,
			HttpSession session) {
		List<TaiKhoan> danh_sach_tai_khoan = tai_khoan_service.listTaiKhoan();
		for (int i = 0; i < danh_sach_tai_khoan.size(); i++) {
			if (taikhoan.getTenTk().equals(
					danh_sach_tai_khoan.get(i).getTenTk())
					&& taikhoan.getMatKhau().equals(
							danh_sach_tai_khoan.get(i).getMatKhau())) {
				session.setAttribute("maloaitaikhoan",
						danh_sach_tai_khoan.get(i).getLoaiTk().getMaLoaiTk());
				session.setAttribute("tentaikhoan", danh_sach_tai_khoan.get(i)
						.getTenTk());
				session.setAttribute("maTk", danh_sach_tai_khoan.get(i)
						.getMaTk());
				if (danh_sach_tai_khoan.get(i).getLoaiTk().getMaLoaiTk() == 1) {
					return "redirect:/trangtongquan";
				} else if (danh_sach_tai_khoan.get(i).getLoaiTk().getMaLoaiTk() == 2
						|| danh_sach_tai_khoan.get(i).getLoaiTk().getMaLoaiTk() == 3) {
					System.out.println(danh_sach_tai_khoan.get(i).getLoaiTk()
							.getMaLoaiTk());
					return "redirect:/";
				}
			}
		}
		return "dangnhap";
	}

	/**
	 * Hàm này dùng để đăng xuất
	 * 
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/dangxuat", method = RequestMethod.GET)
	public String dangXuat(HttpSession session, Model model) {
		session.setAttribute("maloaitaikhoan", "");
		session.setAttribute("tentaikhoan", "");
		session.setAttribute("maTk", "");
		TaiKhoan tai_khoan = new TaiKhoan();
		model.addAttribute("taiKhoan", tai_khoan);
		return "redirect:/";
	}

	/**
	 * Hàm này chuyển đến trang đăng ký tài khoản của người dùng
	 * 
	 * @param model
	 *            biến này dùng để truyền taikhoan qua view dangky
	 * @return trang dangky
	 */
	@RequestMapping(value = "/dangky", method = RequestMethod.GET)
	public String dangKy(Model model) {
		TaiKhoan tai_khoan = new TaiKhoan();
		model.addAttribute("taikhoan", tai_khoan);
		return "dangky";
	}

	/**
	 * Hàm này dùng để chuyển đến trang cập nhật thông tin của người dùng
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/capnhattaikhoan", method = RequestMethod.GET)
	public String capNhatThongTin(Model model, HttpSession session) {
		TaiKhoan tai_khoan = tai_khoan_service.getTaiKhoan(Integer
				.valueOf(session.getAttribute("maTk").toString()));
		// System.out.println(tai_khoan.toString());
		model.addAttribute("taikhoan", tai_khoan);
		return "capnhattaikhoan";
	}

	/**
	 * hàm này dùng để xử lý thao tác cập nhật thông tin người dùng
	 * 
	 * @param taikhoan
	 * @param session
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/capnhattaikhoan.do", method = RequestMethod.POST)
	public String capnhatTaiKhoanAction(@ModelAttribute TaiKhoan taikhoan,
			HttpSession session, Model model) {
		LoaiTk loaiTk = loai_tk_service.getLoaiTk(Integer.valueOf(session
				.getAttribute("maloaitaikhoan").toString()));
		// System.out.println("loai tai khoan duoc cap nhat = " +
		// loaiTk.getTenLoaiTk());
		taikhoan.setLoaiTk(loaiTk);
		// taikhoan.setTgTaoTk(new Date());
		// System.out.println(taikhoan.toString());
		tai_khoan_service.updateTaiKhoan(taikhoan);
		return "redirect:/";
	}

	/**
	 * hàm này xử lý thao tác thêm tài khoản
	 * 
	 * @param taikhoan
	 *            biến này dùng để lấy dữ liệu từ trang dangky
	 * @return trả về trang index
	 */
	@RequestMapping(value = "/dangky.do", method = RequestMethod.POST)
	public String dangKyAction(@ModelAttribute TaiKhoan taikhoan) {
		LoaiTk loaiTk = loai_tk_service.getLoaiTk(3);
		taikhoan.setLoaiTk(loaiTk);
		taikhoan.setTgTaoTk(new Date());
		tai_khoan_service.addTaiKhoan(taikhoan);
		return "redirect:/";
	}

	// -----------------------------------------------Kết thúc khu vực xử lý
	// đăng nhập đăng xuất ------------------------------------------
	/**
	 * Hàm này dùng để chuyển đến trang quản trị khi người dùng bấm vào nút
	 * "Tổng quan" ở trang quản trị
	 * 
	 * @model biến này dùng để lưu trữ dữ liệu sẽ gửi từ controller qua view
	 * @return trả về trang quản trị (trang tổng quan)
	 */
	@RequestMapping(value = "/trangtongquan", method = RequestMethod.GET)
	public String trangtongquan(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		int count_taikhoan = tai_khoan_service.listTaiKhoan().size();
		int count_dienThoai = dien_thoai_service.list().size();
		int count_nhaSx = hang_sx_service.list().size();
		int count_thongbao = thongBaoService.listAll().size();
		int count_binhluan = binhLuanService.listBinhLuan().size();
		model.addAttribute("soluongtaikhoan", count_taikhoan);
		model.addAttribute("soluongdienthoai", count_dienThoai);
		model.addAttribute("soluonghangsanxuat", count_nhaSx);
		model.addAttribute("soluongthongbao", count_thongbao);
		model.addAttribute("soluongbinhluan", count_binhluan);
		return "trangtongquan";
	}

	// -----------------------------------------------khu vực xử lý quản lý
	// người dùng ------------------------------------------

	/**
	 * Hàm này dùng để chuyển quản trị đến trang quản lý người dùng
	 * 
	 * @param model
	 *            biến này dùng để lưu trữ dữ liệu được chuyển từ controller
	 *            sang view
	 * @return trả về trang quản lý người dùng
	 */
	@RequestMapping(value = "/quanlynguoidung", method = RequestMethod.GET)
	public String quanlynguoidung(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<TaiKhoan> list_tai_khoan = tai_khoan_service.listTaiKhoan();
		model.addAttribute("list_tai_khoan", list_tai_khoan);
		return "quanlynguoidung";
	}

	/**
	 * Hàm này dùng để chuyển người dùng khi quản trị nhấn vào nút edit của
	 * người dùng nào đó Hàm này cũng được sử dụng khi người dùng nhấn vào nút
	 * thêm người dùng
	 * 
	 * @param MA_TK
	 *            mã tài khoản dùng để lấy thông tin tài khoản được sửa
	 * @param model
	 *            biến dùng để chuyển dữ liệu giữa controller và view
	 * @return trả về trang themnguoidung
	 */
	@RequestMapping(value = "/edit_taikhoan/{MA_TK}", method = RequestMethod.GET)
	public String editTaiKhoan(@PathVariable Integer MA_TK, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		TaiKhoan taikhoan = tai_khoan_service.getTaiKhoan(MA_TK);
		// taikhoan.setLoaiTk(taikhoan.getLoaiTk());
		List<LoaiTk> listLoaiTk = loai_tk_service.list();
		model.addAttribute("listLoaiTk", listLoaiTk);
		model.addAttribute("taikhoan", taikhoan);
		System.out.println(taikhoan.toString());
		return "suanguoidung";
	}

	/**
	 * hàm này dùng để xử lý thao tác sửa người dùng ở trang quản trị
	 * 
	 * @param taikhoan
	 * @param model
	 * @param br
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/capnhatnguoidung", method = RequestMethod.POST)
	public String updateTaiKhoan(@ModelAttribute TaiKhoan taikhoan,
			Model model, BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Dữ liệu input lỗi");
			return "themnguoidung";
		}
		taikhoan.setTgTaoTk(new Date());
		System.out.println(taikhoan.toString());
		tai_khoan_service.updateTaiKhoan(taikhoan);
		return "redirect:/quanlynguoidung";
	}

	/**
	 * Hàm này dùng để xử lý khi người dùng nhấn nút Save sau khi chỉnh sửa
	 * thông tin của người dùng hoặc thêm thông tin của người dùng vào Dữ liệu
	 * sẽ được lưu vào biến taikhoan, nếu taikhoan đã tồn tại trong hệ thống thì
	 * sẽ dùng hàm updateTaiKhoan để cập nhật Ngược lại nếu taikhoan chưa tồn
	 * tại trong hệ thống thì sẽ dùng hàm addTaiKhoan để thêm
	 * 
	 * @param taikhoan
	 *            biến dùng để lưu trữ thông tin tài khoản được thêm hoặc chỉnh
	 *            sửa
	 * @param model
	 *            biến này dùng để chuyển dữ liệu giữa controller và view
	 * @param br
	 *            biến này dùng để kiểm soát lỗi khi thêm hoặc chỉnh sửa thông
	 *            tin người dùng
	 * @return trả về trang quản lý người dùng
	 */
	@RequestMapping(value = "/themnguoidung", method = RequestMethod.POST)
	public String saveTaiKhoan(@ModelAttribute TaiKhoan taikhoan, Model model,
			BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Dữ liệu input lỗi");
			return "themnguoidung";
		}
		if (taikhoan.getMaTk() != null) {
			tai_khoan_service.updateTaiKhoan(taikhoan);
			System.out
					.println("Tài khoản đã tồn tại... đang cập nhật! Mã tài khoản là "
							+ taikhoan.getMaTk());
		} else {
			System.out
					.println("Tài khoản chưa tồn tại... đang thêm! Mã tài khoản là "
							+ taikhoan.getMaTk());

			System.out.println(taikhoan.toString());
			taikhoan.setTgTaoTk(new Date());
			tai_khoan_service.addTaiKhoan(taikhoan);

		}
		return "redirect:/quanlynguoidung";
	}

	/**
	 * Hàm này dùng để xóa tài khoản dựa trên mã tài khoản được truyền cho
	 * 
	 * @param MA_TK
	 *            mã tài khoản dùng để xóa tài khoản tương ứng
	 * @return chuyển về trang quản lý người dùng
	 */
	@RequestMapping(value = "/delete_taikhoan/{MA_TK}", method = RequestMethod.GET)
	public String deleteTaiKhoan(@PathVariable int MA_TK, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		tai_khoan_service.deleteTaiKhoan(MA_TK);
		return "redirect:/quanlynguoidung";
	}

	/**
	 * Hàm này dùng để xem chi tiết của tài khoản thông qua mã tài khoản
	 * 
	 * @param MA_TK
	 *            mã tài khoản để xác định tài khoản được xem
	 * @param model
	 *            biến này dùng để chuyển dữ liệu từ controller và view
	 * @return trả về trang xemtaikhoan
	 */
	@RequestMapping(value = "/view_taikhoan/{MA_TK}", method = RequestMethod.GET)
	public String viewTaiKhoan(@PathVariable int MA_TK, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		TaiKhoan taikhoan = tai_khoan_service.getTaiKhoan(MA_TK);
		model.addAttribute("maLoaiTaiKhoan", taikhoan.getLoaiTk().getMaLoaiTk());
		model.addAttribute("taikhoan", taikhoan);
		return "xemtaikhoan";
	}

	/**
	 * Hàm này dùng để xử lý khi người dùng nhấn vào nút "Thêm tài khoản" Nó tạo
	 * 1 đối tượng TaiKhoan mới rồi gửi qua cho trang themnguoidung
	 * 
	 * @param model
	 *            biến này để chuyển dữ liệu từ controller qua view
	 * @return trả về trang themnguoidung
	 */
	@RequestMapping(value = "/add_taikhoan", method = RequestMethod.GET)
	public String viewTaiKhoan(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		TaiKhoan taikhoan = new TaiKhoan();
		List<LoaiTk> listLoaiTk = loai_tk_service.list();
		model.addAttribute("listLoaiTk", listLoaiTk);
		model.addAttribute("taikhoan", taikhoan);
		return "themnguoidung";
	}

	// -----------------------------------------------Kết thúc khu vực xử lý
	// quản lý người dùng ------------------------------------------

	// -----------------------------------------------Khu vực xử lý upload hình
	// ảnh ------------------------------------------
	/**
	 * Hàm này dùng để chuyển người dùng đến trang upload khi nhấn vào nút
	 * Upload
	 * 
	 * @return trả về trang upload
	 */
	@RequestMapping(value = "/trangupload", method = RequestMethod.GET)
	public String trangupload(Model model) {
		return "upload";
	}

	/**
	 * Hàm này dùng để upload 1 file đến thư mục webapp/resources/upload
	 * 
	 * @param name
	 *            tên file
	 * @param file
	 *            biến này dùng để lưu file upload lên
	 * @param model
	 *            biến này dùng để chuyển dữ liệu giữa controller và view
	 * @param request
	 *            biến này dùng để xác định vị trí
	 * @return
	 */
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public String uploadFileHandler(@RequestParam("name") String name,
			@RequestParam("file") MultipartFile file, Model model,
			HttpServletRequest request, HttpSession session) {
		HinhAnh hinh = new HinhAnh();

		ServletContext context = RequestContextUtils.getWebApplicationContext(
				request).getServletContext();
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				File dir;// = new File(rootPath + File.separator + "tmpFiles");
				dir = new File(context.getRealPath("/") + "/resources/upload/");
				if (!dir.exists())
					dir.mkdirs();
				name = file.getOriginalFilename();
				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				System.out.println("Server File Location="
						+ serverFile.getPath());
				System.out.println("Server File Location="
						+ serverFile.getAbsolutePath());
				model.addAttribute("image",
						"file:///" + serverFile.getAbsolutePath());
				model.addAttribute("filename", name);
				Blob blob = null;
				blob = new SerialBlob(bytes);
				hinh.setData(blob);
				hinh.setSizeData(blob.length());
				hinh.setTime(new Date());
				hinh.setType("jpeg");
				hinh_anh_service.addHinhAnh(hinh);

				int maDt = Integer.valueOf(session.getAttribute("maDt")
						.toString());

				System.out.println("ma dien thoai duoc upload hinh anh = "
						+ maDt);

				int maHinhAnh = hinh_anh_service.getMaHinhAnhMoiNhat();
				HinhAnh hinhAnh = hinh_anh_service.getHinhAnh(maHinhAnh);
				DienThoai dienThoai = dien_thoai_service.get(maDt);

				AnhDt anhDt = new AnhDt();

				anhDt.setDienThoai(dienThoai);
				anhDt.setHinhAnh(hinhAnh);
				anh_dt_service.add(anhDt);

				return "viewuploadimage";
			} catch (Exception e) {
			}
		} else {
		}
		return "viewuploadimage";
	}

	/**
	 * Hàm này chuyển đến trang xem danh sách hình ảnh được upload lên hệ thống
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/viewupload", method = RequestMethod.GET)
	public String download(Model model) {
		List<HinhAnh> listhinh = hinh_anh_service.listHinhAnh();
		model.addAttribute("listhinh", listhinh);
		return "viewupload";
	}

	/**
	 * Hàm này dùng để hiển thị hình ảnh thông qua thuộc tính src của thẻ img
	 * trong trang jsp
	 * 
	 * @param response
	 *            trong hàm này, biến này dùng để cấu hình định dạng của hình
	 *            ảnh khi lấy về
	 * @param ma_anh
	 *            mã hình ảnh dùng để lấy hình ảnh trong CSDL
	 * @throws IOException
	 *             ngoại lệ nhập xuất
	 * @throws SQLException
	 *             ngoại lệ khi truy vấn
	 */
	@RequestMapping(value = "/getUserImage/{id}")
	public void getUserImage(HttpServletResponse response,
			@PathVariable("id") int ma_anh) throws IOException, SQLException {

		response.setContentType("image/jpeg");
		Blob blob = hinh_anh_service.getHinhAnh(ma_anh).getData();
		byte[] buffer = blob.getBytes(1, (int) blob.length());
		InputStream in1 = new ByteArrayInputStream(buffer);
		IOUtils.copy(in1, response.getOutputStream());
	}

	// -----------------------------------------------Kết thúc khu vực xử lý
	// upload hình ảnh ------------------------------------------

	// -----------------------------------------------Khu vực xử lý quản lý nhà
	// sản xuất ------------------------------------------

	/**
	 * Hàm này dùng để chuyển đến trang quản lý nhà sản xuất
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/quanlynhasanxuat")
	public String quanlynhasanxuat(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<HangSx> hangSxs = hang_sx_service.list();
		model.addAttribute("hangSxs", hangSxs);
		return "quanlynhasanxuat";
	}

	/**
	 * Hàm này dùng để chuyển đến trang thêm nhà sản xuất khi nhấn vào nút thêm
	 * nhà sản xuất
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/themnhasanxuat")
	public String themnhasanxuat(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		HangSx hangSx = new HangSx();
		model.addAttribute("hangSx", hangSx);
		return "themnhasanxuat";
	}

	/**
	 * Hàm này dùng để lưu hay sửa hãng sản xuất
	 * 
	 * @param hangSx
	 * @param model
	 * @param br
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/themHangSx", method = RequestMethod.POST)
	public String saveHangSx(@ModelAttribute HangSx hangSx, Model model,
			BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Input lỗi");
			return "themnhasanxuat";
		}
		hang_sx_service.saveorupdate(hangSx);
		return "redirect:/quanlynhasanxuat";
	}

	/**
	 * hàm này dùng để xóa hãng sản xuất
	 * 
	 * @param maHangSx
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/delete_hangSx/{maHangSx}", method = RequestMethod.GET)
	public String deleteHangSx(@PathVariable int maHangSx, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		hang_sx_service.delete(maHangSx);
		return "redirect:/quanlynhasanxuat";
	}

	/**
	 * Hàm này dùng để chuyển đến trang sửa hãng sản xuất
	 * 
	 * @param maHangSx
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/edit_hangSx/{maHangSx}", method = RequestMethod.GET)
	public String editHangSx(@PathVariable Integer maHangSx, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		HangSx hangSx = hang_sx_service.get(maHangSx);
		model.addAttribute("hangSx", hangSx);
		return "themnhasanxuat";
	}

	// -----------------------------------------------Kết thúc Khu vực xử lý
	// quản lý nhà sản xuất ------------------------------------------

	// -----------------------------------------------Khu vực xử lý quản lý phân
	// hệ của nhà sản xuất ------------------------------------------

	/**
	 * Hàm này dùng để chuyển đến trang quản lý phân hệ
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/quanlyphanhe")
	public String quanlyphanhe(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<PhanHeDt> phanHeDts = phan_he_dt_service.list();
		model.addAttribute("phanHeDts", phanHeDts);
		return "quanlyphanhe";
	}

	/**
	 * Hàm này dùng để chuyến đến trang thêm phân hệ khi người dùng nhấn vào nút
	 * thêm phân hệ
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/themphanhe")
	public String themphanhe(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<HangSx> hangSxs = hang_sx_service.list();
		PhanHeDt phanHeDt = new PhanHeDt();
		model.addAttribute("phanHeDt", phanHeDt);
		model.addAttribute("hangSxs", hangSxs);
		return "themphanhe";
	}

	/**
	 * Hàm này dùng để xử lý thêm hay cập nhật phân hệ khi người dùng thêm hoặc
	 * sửa phân hệ
	 * 
	 * @param phanHeDt
	 * @param model
	 * @param br
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/luuPhanHe", method = RequestMethod.POST)
	public String savePhanHeDt(@ModelAttribute PhanHeDt phanHeDt, Model model,
			BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Input lỗi");
			return "themphanhe";
		}
		if (phanHeDt.getMaPhanHe() != null) {
			phan_he_dt_service.update(phanHeDt);
		} else {
			phan_he_dt_service.add(phanHeDt);
		}
		return "redirect:/quanlyphanhe";
	}

	/**
	 * hàm này dùng để xóa phân hệ
	 * 
	 * @param maPhanHe
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/delete_phanHe/{maPhanHe}", method = RequestMethod.GET)
	public String deletePhanHe(@PathVariable int maPhanHe, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		phan_he_dt_service.delete(maPhanHe);
		return "redirect:/quanlyphanhe";
	}

	/**
	 * hàm này dùng để sửa phân hệ
	 * 
	 * @param maPhanHe
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/edit_phanHe/{maPhanHe}", method = RequestMethod.GET)
	public String editPhanHe(@PathVariable Integer maPhanHe, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<HangSx> hangSxs = hang_sx_service.list();
		PhanHeDt phanHeDt = phan_he_dt_service.get(maPhanHe);
		model.addAttribute("phanHeDt", phanHeDt);
		model.addAttribute("hangSxs", hangSxs);
		return "themphanhe";
	}

	// -----------------------------------------------Khu vực xử lý quản lý phân
	// hệ cùa nhà sản xuất ------------------------------------------

	// -----------------------------------------------Khu vực xử lý quản lý sản
	// phẩm ------------------------------------------

	/**
	 * hàm này dùng để chuyến đến trang quản lý sản phẩm
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/quanlysanpham")
	public String quanlysanpham(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}

		List<DienThoai> listDienThoai = dien_thoai_service.list();
		model.addAttribute("list_san_pham", listDienThoai);
		return "quanlysanpham";
	}

	/**
	 * hàm này xử lý thao tác thêm và sửa điện thoại
	 * 
	 * @param dienthoai
	 * @param model
	 * @param br
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/themDienThoai", method = RequestMethod.POST)
	public String saveDienThoai(@ModelAttribute DienThoai dienthoai,
			Model model, BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Dữ liệu input lỗi");
			return "themsanpham";
		}
		if (dienthoai.getMaDt() != null) {
			int maPhanHe = dienthoai.getPhanHeDt().getMaPhanHe();
			PhanHeDt phanHeDt = phan_he_dt_service.get(maPhanHe);
			dienthoai.setPhanHeDt(phanHeDt);
			Set<DonGia> donGias = dienthoai.getDonGias();
			dienthoai.setDonGias(donGias);
			System.out.println("dien thoai moi = " + dienthoai.toString());
			dien_thoai_service.update(dienthoai);
		} else {
			dien_thoai_service.add(dienthoai);
		}
		return "redirect:/quanlysanpham";
	}

	/**
	 * Hàm này dùng để chuyển đến trang thêm sản phẩm
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/themsanpham")
	public String themsanpham(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<PhanHeDt> phanHeDts = phan_he_dt_service.list();
		CauHinh cauHinh = new CauHinh();
		DienThoai dienThoai = new DienThoai();
		dienThoai.setCauHinh(cauHinh);
		model.addAttribute("dienthoai", dienThoai);
		model.addAttribute("phanHeDts", phanHeDts);
		return "themsanpham";
	}

	/**
	 * hàm này dùng để chuyển đến trang thêm sản phẩm để sửa sản phẩm
	 * 
	 * @param maDt
	 *            biến này dùng để lấy dienThoai
	 * @param model
	 *            biến này dùng để chuyển dữ liệu
	 * @param session
	 *            biến này dùng kiểm soát loại tài khoản
	 * @return
	 */
	@RequestMapping(value = "/edit_dienThoai/{maDt}", method = RequestMethod.GET)
	public String editDienThoai(@PathVariable Integer maDt, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}

		DienThoai dienThoai = dien_thoai_service.get(maDt);
		List<PhanHeDt> phanHeDts = phan_he_dt_service.list();

		model.addAttribute("dienthoai", dienThoai);
		model.addAttribute("phanHeDts", phanHeDts);

		System.out.println("dien thoai cu  = " + dienThoai.toString());
		return "themsanpham";
	}

	/**
	 * Hàm này dùng để xóa điện thoại
	 * 
	 * @param maDt
	 *            biến này dùng để xóa điện thoại tương ứng
	 * @param session
	 *            biến này dùng để kiểm soát quyền
	 * @return
	 */
	@RequestMapping(value = "/delete_dienThoai/{maDt}", method = RequestMethod.GET)
	public String deleteDienThoai(@PathVariable int maDt, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		dien_thoai_service.delete(maDt);
		return "redirect:/quanlysanpham";
	}

	/**
	 * Hàm này dùng để xem chi tiết điện thoại
	 * 
	 * @param maDt
	 *            biến này dùng để nhận dạng điện thoại
	 * @param model
	 *            biến này dùng để chuyển dữ liệu
	 * @param session
	 *            biến này dùng để kiểm soát quyền
	 * @return
	 */
	@RequestMapping(value = "/chitietdienthoai/{maDt}", method = RequestMethod.GET)
	public String viewDienThoai(@PathVariable Integer maDt, Model model,
			HttpSession session) {
		DienThoai dienThoai = dien_thoai_service.get(maDt);
		List<Integer> dsHinhAnh = dien_thoai_service.getHinhAnh(maDt);
		DonGia donGia = dien_thoai_service.getLastedDonGia(maDt);
		CauHinh cauHinh = dienThoai.getCauHinh();
		List<BinhLuan> binhLuans = binhLuanService.listBinhLuan(maDt);

		model.addAttribute("binhLuans", binhLuans);
		model.addAttribute("soluongconlai", dienThoai.getSlConLai());
		model.addAttribute("tenDienThoai", dienThoai.getTenDt());
		model.addAttribute("dsHinhAnh", dsHinhAnh);
		model.addAttribute("donGia", donGia);
		model.addAttribute("cauHinh", cauHinh);

		ChuoiTimKiem chuoiTimKiem = new ChuoiTimKiem();
		model.addAttribute("chuoiTimKiem", chuoiTimKiem);
		session.setAttribute("maDt", maDt);
		return "chitietsanpham";
	}

	/**
	 * Hàm này thêm maDt vào session
	 * 
	 * @param maDt
	 *            biến này dùng để nhận dạng điện thoại
	 * @param model
	 *            biến này dùng để chuyển dữ liệu
	 * @param session
	 *            biến này dùng để lưu maDt
	 * @return trả về trang index
	 */
	@RequestMapping(value = "/themvaososanh/{maDt}", method = RequestMethod.GET)
	public String themSoSanhDienThoai(@PathVariable Integer maDt, Model model,
			HttpSession session) {
		session.setAttribute("idDt", session.getAttribute("idDt").toString()
				+ "-" + maDt);
		return "redirect:/";
	}

	/**
	 * Hàm này xóa maDt khỏi session
	 * 
	 * @param maDt
	 *            dùng để xóa
	 * @param model
	 *            chuyển dữ liệu
	 * @param session
	 *            lưu maDt
	 * @return trả về trang index
	 */
	@RequestMapping(value = "/goSoSanh/{maDt}", method = RequestMethod.GET)
	public String goSoSanhDienThoai(@PathVariable Integer maDt, Model model,
			HttpSession session) {
		String old = session.getAttribute("idDt").toString();
		String[] out = old.split("-");
		String New = "";
		for (int i = 1; i < out.length; i++) {
			if (Integer.parseInt(out[i]) != maDt) {
				New += "-" + out[i];
			}
		}
		System.out.println("session moi =" + New);
		session.setAttribute("idDt", New);
		// soSanhDienThoai(model, session);
		return "redirect:/soSanh";
	}

	/**
	 * hàm này dùng để so sánh các sản phẩm được lưu trong session
	 * 
	 * @param model
	 *            biến này chuyển dữ liệu
	 * @param session
	 *            nơi lưu maDt để so sánh
	 * @return trả về trang sosanh
	 */
	@RequestMapping(value = "/soSanh", method = RequestMethod.GET)
	public String soSanhDienThoai(Model model, HttpSession session) {
		String dayId = session.getAttribute("idDt").toString();
		String[] out = dayId.split("-");
		List<DienThoai> dienThoais = new ArrayList<DienThoai>();
		for (int i = 1; i < out.length; i++) {
			DienThoai dienThoai = dien_thoai_service.get(Integer
					.parseInt(out[i]));
			dienThoais.add(dienThoai);
		}
		model.addAttribute("dienThoais", dienThoais);
		return "sosanh";
	}

	/**
	 * hàm này xóa toàn bộ dữ liệu trong session idDt
	 * 
	 * @param model
	 *            truyền dữ liệu
	 * @param session
	 *            nơi lưu session
	 * @return trả về trang index
	 */
	@RequestMapping(value = "/xoaSoSanh", method = RequestMethod.GET)
	public String xoaSoSanhDienThoai(Model model, HttpSession session) {
		session.setAttribute("idDt", "");
		return "redirect:/";
	}

	/**
	 * hàm này xử lý thao tác tìm kiếm điện thoại
	 * 
	 * @param chuoiTimKiem
	 * @param model
	 * @param br
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/search.do", method = RequestMethod.POST)
	public String search(@ModelAttribute ChuoiTimKiem chuoiTimKiem,
			Model model, BindingResult br, HttpSession session) {
		System.out.println("chuoi vua nhap la " + chuoiTimKiem.getValue());
		List<DienThoai> dienThoais = dien_thoai_service.timKiem(chuoiTimKiem);
		model.addAttribute("dienThoais", dienThoais);
		return "ketquatimkiem";
	}

	// -----------------------------------------------Kết thúc khi vực xử lý
	// quản lý sản phẩm ------------------------------------------

	// -----------------------------------------------Khu vực xử lý quản lý đơn
	// gia cho điện thoại -------------------------------------

	/**
	 * Thêm đơn giá cho điện thoại
	 * 
	 * @param maDt
	 *            mã điện thoại của điện thoại được thêm đơn giá
	 * @param model
	 *            truyền dữ liệu
	 * @param session
	 *            kiểm soát quyền
	 * @return trả về trang cap nhat don gia
	 */
	@RequestMapping(value = "/update_donGiaDienThoai/{maDt}", method = RequestMethod.GET)
	public String updateDonGia(@PathVariable Integer maDt, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		// Lấy điện thoại
		DienThoai dienThoai = dien_thoai_service.get(maDt);
		model.addAttribute("maDt", dienThoai.getMaDt());
		// lấy danh sách đơn giá gửi qua cho view
		List<DonGia> donGias = don_gia_service.getListDonGia(maDt);
		model.addAttribute("donGias", donGias);
		// Tạo 1 đơn giá rồi gửi qua view
		DonGia donGia = new DonGia();
		model.addAttribute("donGia", donGia);

		return "capnhatdongia";
	}

	@RequestMapping(value = "/themDonGia", method = RequestMethod.POST)
	public String saveDonGia(@ModelAttribute DonGia donGia, Model model,
			BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Dữ liệu input lỗi");
			return "themsanpham";
		}
		donGia.setTgTaoGia(new Date());
		don_gia_service.add(donGia);
		return "redirect:/quanlysanpham";
	}

	/**
	 * hàm này dùng để update hình ảnh
	 * 
	 * @param maDt
	 *            mã điện thoại dc update hinh anh
	 * @param model
	 *            truyền dữ liệu
	 * @param session
	 *            kiểm soát quyền
	 * @return
	 */
	@RequestMapping(value = "/update_hinhAnhDienThoai/{maDt}", method = RequestMethod.GET)
	public String updateHinhAnh(@PathVariable Integer maDt, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<Integer> list = dien_thoai_service.getHinhAnh(maDt);
		model.addAttribute("list", list);
		session.setAttribute("maDt", maDt);
		return "capnhathinhanh";
	}

	/**
	 * Delete hình ảnh
	 * 
	 * @param maAnh
	 *            mã ảnh bị xóa
	 * @param session
	 *            kiểm soát quyền
	 * @return trả về trang quản lý sản phẩm
	 */
	@RequestMapping(value = "/delete_hinhAnh/{maAnh}", method = RequestMethod.GET)
	public String deleteHinhAnh(@PathVariable int maAnh, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		anh_dt_service.delete(maAnh);
		return "redirect:/quanlysanpham";
	}

	@RequestMapping(value = "/themHinhAnhDt", method = RequestMethod.GET)
	public String addHinhAnh(HttpSession session, Model model) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}

		return "redirect:/trangupload";
	}

	// -----------------------------------------------Hết khu vực xử lý quản lý
	// đơn giá cho điện thoại

	// ------------------------------Bình luận-------------------------------
	/*-----------------------binh luan----------------------------------------------------
	 *
	 *Author: Nguyen qui nghia
	 *
	 */
	@RequestMapping(value = "/addCommentCon", method = RequestMethod.GET)
	public String addCommentCon() {
		return "comment";
	}

	@RequestMapping(value = "/addCommentCon.do", method = RequestMethod.GET)
	public String addCommentCon_do(int mabl, String noidung, HttpSession session) {

		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}

		// binhluan = binhLuanService.getBinhLuan(binhluan.getMaBl());
		int maTk = (Integer) session.getAttribute("maTk");
		BinhLuan bl = binhLuanService.getBinhLuan(mabl);
		TaiKhoan myAccount = tai_khoan_service.getTaiKhoan(maTk);

		BinhLuan blmoi = new BinhLuan();
		BlPhu blpMoi = new BlPhu();

		blmoi.setBaoViPham(0);
		blmoi.setNoiDungBl(noidung);
		blmoi.setTaiKhoan(myAccount);
		blmoi.setThoiGianBl(new Date());

		blpMoi.setBinhLuanByMaBl(blmoi);
		blpMoi.setBinhLuanByMaBlC(bl);

		blmoi.setBlPhuByMaBl(blpMoi);

		binhLuanService.addBinhLuan(blmoi);
		// blPhuService.addBlPhu(blpMoi);

		return "comment";
	}

	@RequestMapping(value = "/addCommentDt.do", method = RequestMethod.GET)
	public String addCommentDt_do(int madt, String noidung, HttpSession session) {

		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}

		// binhluan = binhLuanService.getBinhLuan(binhluan.getMaBl());
		int maTk = (Integer) session.getAttribute("maTk");
		DienThoai dt = dien_thoai_service.get(madt);
		TaiKhoan myAccount = tai_khoan_service.getTaiKhoan(maTk);

		BinhLuan blmoi = new BinhLuan();
		BinhLuanDt blDt = new BinhLuanDt();

		blmoi.setBaoViPham(0);
		blmoi.setNoiDungBl(noidung);
		blmoi.setTaiKhoan(myAccount);
		blmoi.setThoiGianBl(new Date());

		blDt.setDienThoai(dt);
		blDt.setBinhLuan(blmoi);

		blmoi.setBinhLuanDt(blDt);

		binhLuanService.addBinhLuan(blmoi);
		// blPhuService.addBlPhu(blpMoi);

		return "comment";
	}

	@RequestMapping(value = "/listComment_Dt.do", method = RequestMethod.GET)
	public String getListCommentByDienThoai_do(int madt, Model model,
			HttpSession session) {
		DienThoai dt = dien_thoai_service.get(madt);
		List<BinhLuanDt> listBlDt = binhLuanDtService.listBinhLuanDt(madt);

		List<ItemBinhLuan> listBinhLuan = new ArrayList<ItemBinhLuan>();
		for (int i = 0; i < listBlDt.size(); i++) {

			BinhLuan blTmp = binhLuanService.getBinhLuan(listBlDt.get(i)
					.getMaBl());
			ItemBinhLuan item = new ItemBinhLuan();
			item.setBinhLuan(blTmp);
			item.setListBlCon(getBinhLuanCon(blTmp.getMaBl()));
			listBinhLuan.add(item);
		}

		model.addAttribute("lsItemBinhLuan", listBinhLuan);
		model.addAttribute("dienThoai", dt);
		return "showBinhLuanDt";
	}

	@RequestMapping(value = "/listComment_Bl.do", method = RequestMethod.GET)
	public String getListBinhLuanByBinhLuan(int mabl, Model model,
			HttpSession session) {

		BinhLuan binhluan = binhLuanService.getBinhLuan(mabl);
		List<BlPhu> listBlPhu = blPhuService.listBlPhu(mabl);

		List<ItemBinhLuan> listBinhLuan = new ArrayList<ItemBinhLuan>();
		for (int i = 0; i < listBlPhu.size(); i++) {

			BinhLuan blTmp = binhLuanService.getBinhLuan(listBlPhu.get(i)
					.getMaBl());
			ItemBinhLuan item = new ItemBinhLuan();
			item.setBinhLuan(blTmp);
			item.setListBlCon(getBinhLuanCon(blTmp.getMaBl()));
			listBinhLuan.add(item);
		}

		model.addAttribute("lsItemBinhLuan", listBinhLuan);
		model.addAttribute("binhLuan", binhluan);
		return "showBinhLuanBl";
	}

	public List<BinhLuan> getBinhLuanCon(int mabl) {
		List<BlPhu> listblp = blPhuService.listBlPhu(mabl);
		List<BinhLuan> listBl = new ArrayList<BinhLuan>();
		for (int i = 0; i < listblp.size(); i++) {
			int mabl_con = listblp.get(i).getBinhLuanByMaBl().getMaBl();
			BinhLuan bl = binhLuanService.getBinhLuan(mabl_con);
			listBl.add(bl);
		}

		return listBl;
	}

	@RequestMapping(value = "/baoViPham.do", method = RequestMethod.GET)
	public String baoViPham(int mabl, Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		BinhLuan bl = binhLuanService.getBinhLuan(mabl);
		bl.setBaoViPham(bl.getBaoViPham() + 1);
		binhLuanService.updateBinhLuan(bl);

		return "comment";
	}

	@RequestMapping(value = "/quanlybinhluan", method = RequestMethod.GET)
	public String quanlybinhluan(Model model, HttpSession session) {
		if (session.getAttribute("maloaitaikhoan") == null
				|| !session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<BinhLuan> lsBl = binhLuanService.listBinhLuan();
		List<BinhLuan> lsBinhLuan = new ArrayList<BinhLuan>();
		for (int i = 0; i < lsBl.size(); i++) {
			BinhLuan bl = binhLuanService.getBinhLuan(lsBl.get(i).getMaBl());
			lsBinhLuan.add(bl);
		}
		model.addAttribute("lsBinhLuan", lsBinhLuan);
		return "quanlybinhluan";
	}

	@RequestMapping(value = "/xoabinhluan.do", method = RequestMethod.GET)
	public String xoaBinhLuan_do(int mabl, Model model, HttpSession session) {
		if (session.getAttribute("maloaitaikhoan") == null
				|| !session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		binhLuanService.deleteBinhLuan(mabl);
		return "redirect:/quanlybinhluan.do";
	}

	@RequestMapping(value = "/themBinhLuan.do", method = RequestMethod.POST)
	public String addBinhLuan(@ModelAttribute ChuoiTimKiem chuoiTimKiem,
			Model model, BindingResult br, HttpSession session) {
		System.out.println("chuoi vua nhap la " + chuoiTimKiem.getValue());

		TaiKhoan taiKhoan = tai_khoan_service.getTaiKhoan(Integer
				.valueOf(session.getAttribute("maTk").toString()));
		BinhLuan binhLuan = new BinhLuan();
		binhLuan.setTaiKhoan(taiKhoan);
		binhLuan.setNoiDungBl(chuoiTimKiem.getValue());
		binhLuan.setBaoViPham(0);
		binhLuan.setThoiGianBl(new Date());

		binhLuanService.addBinhLuan(binhLuan);

		BinhLuanDt binhLuanDt = new BinhLuanDt();
		DienThoai dienThoai = dien_thoai_service.get(Integer.valueOf(session
				.getAttribute("maDt").toString()));
		binhLuanDt.setBinhLuan(binhLuan);
		binhLuanDt.setDienThoai(dienThoai);
		binhLuanDtService.addBinhLuanDt(binhLuanDt);

		return "redirect:/chitietdienthoai/" + session.getAttribute("maDt");
	}

	// -----------------------------hết khu vực bình luận
	
	//-------------------Thông báo
	@RequestMapping(value = "/quanlythongbao", method = RequestMethod.GET)
	public String quanLyThongBao(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		List<ThongBao> thongBaos = thongBaoService.listAll();
		model.addAttribute("thongBaos", thongBaos);
		return "quanlythongbao";
	}
	
	
	@RequestMapping(value = "/themthongbao", method = RequestMethod.GET)
	public String themThongBao(Model model, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		ThongBao thongBao = new ThongBao();
		thongBao.setThoiGianTb(new Date());
		int maTk = Integer.valueOf(session.getAttribute("maTk").toString());
		thongBao.setTaiKhoan(tai_khoan_service.getTaiKhoan(maTk));
		model.addAttribute("thongBao", thongBao);
		return "themthongbao";
	}
	
	@RequestMapping(value = "/themthongbao.do", method = RequestMethod.POST)
	public String saveThongBao(@ModelAttribute ThongBao thongBao, Model model, BindingResult br, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		if (br.hasErrors()) {
			System.out.println("Dữ liệu input lỗi");
			return "themthongbao";
		}
		
		
		HinhAnh hinh = new HinhAnh();
		hinh = hinh_anh_service.getHinhAnh(hinh_anh_service.getMaHinhAnhMoiNhat());
		thongBao.setHinhAnh(hinh);
		TaiKhoan taiKhoan = tai_khoan_service.getTaiKhoan(Integer.valueOf(session.getAttribute("maTk").toString()));
		thongBao.setTaiKhoan(taiKhoan);
		
		if(thongBao.getMaTb()!=null){
			thongBaoService.update(thongBao);
		} else{
			thongBaoService.add(thongBao);
		}
	
		return "redirect:/quanlythongbao";
	}
	
	@RequestMapping(value = "/delete_thongbao/{maTb}", method = RequestMethod.GET)
	public String deleteThongBao(@PathVariable int maTb, HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		thongBaoService.delete(maTb);
		return "redirect:/quanlythongbao";
	}
	
	
	
	@RequestMapping(value = "/tranguploadHinhAnhThongBao", method = RequestMethod.GET)
	public String tranguploadHinhAnhThongBao(Model model) {
		return "uploadHinhAnhThongBao";
	}
	
	@RequestMapping(value = "/uploadHinhAnhThongBao", method = RequestMethod.POST)
	public String uploadFileHinhAnhThongBao(@RequestParam("name") String name,
			@RequestParam("file") MultipartFile file, Model model,
			HttpServletRequest request, HttpSession session) {
		HinhAnh hinh = new HinhAnh();

		ServletContext context = RequestContextUtils.getWebApplicationContext(
				request).getServletContext();
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				File dir;// = new File(rootPath + File.separator + "tmpFiles");
				dir = new File(context.getRealPath("/") + "/resources/upload/");
				if (!dir.exists())
					dir.mkdirs();
				name = file.getOriginalFilename();
				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + name);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				System.out.println("Server File Location="
						+ serverFile.getPath());
				System.out.println("Server File Location="
						+ serverFile.getAbsolutePath());
				model.addAttribute("image",
						"file:///" + serverFile.getAbsolutePath());
				model.addAttribute("filename", name);
				Blob blob = null;
				blob = new SerialBlob(bytes);
				hinh.setData(blob);
				hinh.setSizeData(blob.length());
				hinh.setTime(new Date());
				hinh.setType("jpeg");
				hinh_anh_service.addHinhAnh(hinh);

				return "redirect:/themthongbao";
			} catch (Exception e) {
			}
		} else {
		}
		return "redirect:/themthongbao";
	}
	
	
	@RequestMapping(value = "/view_thongbao/{maTb}", method = RequestMethod.GET)
	public String viewThongBao(@PathVariable Integer maTb, Model model,
			HttpSession session) {
		if (!session.getAttribute("maloaitaikhoan").equals(1)) {
			return "redirect:/dangnhap";
		}
		ThongBao thongBao = thongBaoService.get(maTb);
		System.out.println(thongBao.toString());
		TaiKhoan taiKhoan = tai_khoan_service.getTaiKhoan(thongBao.getTaiKhoan().getMaTk());
		thongBao.setTaiKhoan(taiKhoan);
		HinhAnh hinhAnh = hinh_anh_service.getHinhAnh(thongBao.getHinhAnh().getMaAnh());
		thongBao.setHinhAnh(hinhAnh);
		model.addAttribute("thongBao", thongBao);
		return "xemthongbao";
	}
	
	
	//--------------------Hết thông báo

}
