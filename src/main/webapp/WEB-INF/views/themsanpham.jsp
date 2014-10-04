<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Trang Quản Trị</title>
<!-- BOOTSTRAP STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/mytheme/css/bootstrap.css"
	rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/mytheme/css/font-awesome.css"
	rel="stylesheet" />
<!-- MORRIS CHART STYLES-->

<!-- CUSTOM STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/mytheme/css/custom.css"
	rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- TABLE STYLES-->
<link
	href="${pageContext.request.contextPath}/resources/mytheme/js/dataTables/dataTables.bootstrap.css"
	rel="stylesheet" />

</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/trangtongquan.html">Trang Quản Trị</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> &nbsp; <a href="#" class="btn btn-danger square-btn-adjust">Thông tin tài khoản</a><a href="${pageContext.request.contextPath}/dangxuat.html" class="btn btn-danger square-btn-adjust">Đăng xuất</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="${pageContext.request.contextPath}/resources/mytheme/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a  href="${pageContext.request.contextPath}/trangtongquan.html"><i class="fa fa-dashboard fa-3x"></i> Tổng quan</a>
                    </li>
                     <li>
                        <a class="active-menu" href="${pageContext.request.contextPath}/quanlysanpham.html"><i class="glyphicon glyphicon-phone fa-3x"></i>Quản lý sản phẩm</a>
                    </li>
                    <li>
                        <a   href="${pageContext.request.contextPath}/quanlynguoidung.html"><i class="glyphicon glyphicon-user fa-3x"></i> Quản lý người dùng</a>
                    </li>
						   <li  >
                        <a   href="${pageContext.request.contextPath}/quanlythongbao.html"><i class="fa fa-bell-o fa-3x"></i> Quản lý thông báo</a>
                    </li>
                    <li>
                        <a  href="${pageContext.request.contextPath}/quanlynhasanxuat.html"><i class="glyphicon glyphicon-home fa-3x"></i> Quản lý nhà sản xuất</a>
                    </li>
                    <li>
                        <a  href="${pageContext.request.contextPath}/quanlybinhluan.html"><i class="glyphicon glyphicon-comment fa-3x"></i> Quản lý bình luận</a>
                    </li>
                    <li>
                        <a  href="${pageContext.request.contextPath}/quanlydondathang.html"><i class="glyphicon glyphicon-shopping-cart fa-3x"></i> Quản lý đơn đặt hàng</a>
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-usd fa-3x"></i> Thống Kê<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#"></a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thongke-doanhthu.html">Doanh thu</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thongke-nguoidung.html">Người dùng</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/thongke-sanpham.html">Sản phẩm</a>
                            </li>                            
                        </ul>
                      </li>
                    
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Trang quản trị hệ thống bán lẻ điện thoại</h2>   
                        <h5>Chào Quản trị!</h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row"><!-- phần hiển thị nội dung -->
					<form:form role="form" action="/themDienThoai" commandName="dienthoai" method="post">
					<div class="col-lg-5">
						<div class="logindiv2">
								<form:input type="hidden" class="form-control" path="maDt" placeholder="Mã điện thoại"/>
								<form:input type="hidden" class="form-control" path="cauHinh.maCh" placeholder="Mã cấu hình"/>
								<div class="form-group">
									<label>Phân hệ điện thoại</label><br>
									 <form:select path="phanHeDt.maPhanHe" class="form-control" items="${phanHeDts}" required="true" itemLabel="tenPhanHe" itemValue="maPhanHe"/>
								</div>
								<div class="form-group">
									<label>Tên điện thoại</label>
									<form:input type="text" class="form-control" path="tenDt"
										placeholder="Tên điện thoại"/>
								</div>
								<div class="form-group">
									<label>Ghi chú</label>
									<form:input type="text" class="form-control" path="ghiChuDt"
										placeholder="Ghi chú"/>
								</div>
								<div class="form-group">
									<label>Phụ kiện</label>
									<form:input type="text" class="form-control" path="phuKien" placeholder="Phụ kiện đi kèm"/>
								</div>
								<div class="form-group">
									<label>Số lượng hàng</label>
									<form:input type="text" class="form-control" path="slConLai" placeholder="Số lượng điện thoại còn"/>
								</div>
								<div class="form-group">
									<label>Hệ điều hành</label><br>
									<form:input type="text" class="form-control" path="cauHinh.heDieuHanh" placeholder="Hệ điều hành của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Ngôn ngữ</label>
									<form:input type="text" class="form-control" path="cauHinh.ngonNgu" placeholder="Ngôn ngữ của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Loại màn hình</label>
									<form:input type="text" class="form-control" path="cauHinh.loaiManHinh" placeholder="Loại công nghệ màn hình của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Hiển thị màu của màn hình</label>
									<form:input type="text" class="form-control" path="cauHinh.mauManHinh" placeholder="Số màu sắc điện thoại hiển thị được"/>
								</div>
								<div class="form-group">
									<label>Độ phân giải màn hình</label>
									<form:input type="text" class="form-control" path="cauHinh.doPhanGiai" placeholder="Độ phân giải của màn hình điện thoại"/>
								</div>
								<div class="form-group">
									<label>Kích thước màn hình</label>
									<form:input type="number" class="form-control" path="cauHinh.ktManHinh" placeholder="Kích thước màn hình (inch)"/>
								</div>
								<div class="form-group">
									<label>Loại cảm ứng</label>
									<form:input type="text" class="form-control" path="cauHinh.camUng" placeholder="Có hay không? Loại công nghệ màn hình cảm ứng"/>
								</div>
								<div class="form-group">
									<label>Camera sau</label>
									<form:input type="number" class="form-control" path="cauHinh.cameraSau" placeholder="Độ phân giải camera sau"/>
								</div>
								<div class="form-group">
									<label>Camera trước</label>
									<form:input type="number" class="form-control" path="cauHinh.cameraTruoc" placeholder="Độ phân giải camera trước"/>
								</div>
								<div class="form-group">
									<label>Quay phim</label>
									<form:input type="text" class="form-control" path="cauHinh.quayPhim" placeholder="Khả năng quay phim của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Tốc độ CPU</label>
									<form:input type="text" class="form-control" path="cauHinh.tocDoCpu" placeholder="Tốc độ xử lý của CPU trong điện thoại"/>
								</div>
						</div>
				</div>
				<div class="col-lg-5">
						<div class="logindiv2">
								<div class="form-group">
									<label>Chipset</label>
									<form:input type="text" class="form-control" path="cauHinh.chipset" placeholder="Tên hãng của chip xử lý"/>
								</div>
								<div class="form-group">
									<label>RAM</label>
									<form:input type="text" class="form-control" path="cauHinh.ram" placeholder="Dung lượng RAM của điện thoại"/>
								</div>
								<div class="form-group">
									<label>ROM</label>
									<form:input type="text" class="form-control" path="cauHinh.rom" placeholder="Dung lượng ROM của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Thẻ nhớ</label>
									<form:input type="text" class="form-control" path="cauHinh.theNhoNgoai" placeholder="Có hay không? Dung lượng tối đa"/>
								</div>
								<div class="form-group">
									<label>Kiểu dáng</label>
									<form:input type="text" class="form-control" path="cauHinh.kieuDang" placeholder="Thanh/Gập/Trượt"/>
								</div>
								<div class="form-group">
									<label>Kích thước</label>
									<form:input type="text" class="form-control" path="cauHinh.kichThuoc" placeholder="Kích thước 3 chiều của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Trọng lượng</label>
									<form:input type="number" class="form-control" path="cauHinh.trongLuong" placeholder="Trọng lượng khi có pin của điện thoại"/>
								</div>
								<div class="form-group">
									<label>Loại pin</label>
									<form:input type="text" class="form-control" path="cauHinh.loaiPin" placeholder="Loại công nghệ sản xuất pin"/>
								</div>
								<div class="form-group">
									<label>Kết nối ngoài</label>
									<form:input type="text" class="form-control" path="cauHinh.knNgoai" placeholder="Các kết nối không dây"/>
								</div>
								<div class="form-group">
									<label>Kết nối ngoài khác</label>
									<form:input type="text" class="form-control" path="cauHinh.knKhac" placeholder="Các kết nối có dây"/>
								</div>
								<div class="form-group">
									<label>Loại sim</label>
									<form:input type="text" class="form-control" path="cauHinh.loaiSim" placeholder="Các nhà mạng hỗ trợ"/>
								</div>
								<div class="form-group">
									<label>Khả năng xem phim</label>
									<form:input type="text" class="form-control" path="cauHinh.xemPhim" placeholder="Các định dạng video được hỗ trợ"/>
								</div>
								<div class="form-group">
									<label>Khả năng nghe nhạc</label>
									<form:input type="text" class="form-control" path="cauHinh.ngheNhac" placeholder="Các định dạng âm thanh được hỗ trợ"/>
								</div>
								<div class="form-group">
									<label>Chức năng khác</label>
									<form:input type="text" class="form-control" path="cauHinh.chucNangKhac" placeholder="Chức năng chưa được liệt kê"/>
								</div>
								<div class="form-group">
									<label>Thời gian bảo hành</label>
									<form:input type="number" class="form-control" path="tgBaoHanh" placeholder="Số tháng điện thoại được bảo hành"/>
								</div>
								<div class="form-group">
									<label></label><br>
									<input type=submit value="Save" class="btn btn-default" />
									<input type=reset value="Reset" class="btn btn-default" />
								</div>
						</div>
				</div>
				</form:form>
			</div>
				
	
				              
				</div><!-- hết phần hiển thị nội dung -->
                                                               
                                      
            </div>
                                
                      
                    </div>
                 <!-- /. ROW  -->           

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/mytheme/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/mytheme/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.metisMenu.js"></script>
	<!-- DATA TABLE SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/mytheme/js/dataTables/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/mytheme/js/dataTables/dataTables.bootstrap.js"></script>
	<script>
		$(document).ready(function() {
			$('#dataTables-example').dataTable();
		});
	</script>
	<!-- CUSTOM SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/mytheme/js/custom.js"></script>
</body>
</html>
