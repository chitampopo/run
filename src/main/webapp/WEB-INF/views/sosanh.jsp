<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đăng ký tài khoản mới</title>
<meta name="description" content="Default Description" />
<meta name="keywords" content="Magento, Varien, E-commerce" />
<meta name="robots" content="INDEX,FOLLOW" />

<!--[if lt IE 7]>
<script type="text/javascript">
//<![CDATA[
    var BLANK_URL = 'http://www.dev-mdl.in/metroshop/js/blank.html';
    var BLANK_IMG = 'http://www.dev-mdl.in/metroshop/js/spacer.gif';
//]]>
</script>
<![endif]-->
<!--[if gte IE 9]>
  <style type="text/css">
    .gradient {
       filter: none;
    }
  </style>
<![endif]-->
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

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/superfish.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/proNav.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/styles.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/responsive.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/themeColor.php" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/widgets.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/mix.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/print.css" media="print" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/bootstrap.min.css" media="print" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/bootstrap-theme.min.css" media="print" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/bootstrap-theme.css" media="print" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mytheme/js/eebc76f01a8340aa21a24b69475b71fb.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mytheme/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mytheme/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mytheme/js/jquery-1.10.2.js"></script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="http://www.dev-mdl.in/metroshop/skin/frontend/default/default/css/styles-ie.css" media="all" />
<![endif]-->
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="http://www.dev-mdl.in/metroshop/skin/frontend/default/metrostore/css/responsiveIe.css" media="all" />
<![endif]-->
<!--[if lt IE 7]>
<script type="text/javascript" src="http://www.dev-mdl.in/metroshop/media/js/aa8f20687613a252f87a7355f77d164e.js"></script>
<![endif]-->



<script type="text/javascript">
//<![CDATA[
Mage.Cookies.path     = '/metroshop';
Mage.Cookies.domain   = '.www.dev-mdl.in';
//]]>
</script>

<script type="text/javascript">
//<![CDATA[
optionalZipCountries = ["HK","IE","MO","PA"];
//]]>
</script>
<script type="text/javascript">//<![CDATA[
        var Translator = new Translate([]);
        //]]></script>

</head>
<body id="bg_color"  class=" cms-page-view cms-home">
<div class="wrapper">
        <noscript>
        <div class="global-site-notice noscript">
            <div class="notice-inner">
                <p>
                    <strong>JavaScript seems to be disabled in your browser.</strong><br />
                    You must have JavaScript enabled in your browser to utilize the functionality of this website.                </p>
            </div>
        </div>
    </noscript>
    <div class="page container">
        <div class="header-container">
    <div class="header">
      <div class="full-width">
         <div class="bottomBar span12">
                 <a href="${pageContext.request.contextPath}/" title="Trang chủ" class="logo"><strong>Trang chủ</strong><img src="${pageContext.request.contextPath}/resources/mytheme/images/it_logo.png" alt="Trang chÃº" /></a>
                <div class="header-right">
             <ul class="links">
                        <li class="first" ><a href="${pageContext.request.contextPath}/lienhe" title="liên lạc" class="contact">Liên lạc</a></li>
            </ul>
             <div class="block block-cart header_cart">
        
             
          </div>
         </div>
      </div>   
            </div>
</div>
<div class="nav-width">
    <div class="nav-width-inner">
    <form id="search_mini_form" action="http://www.dev-mdl.in/metroshop/index.php/catalogsearch/result/" method="get">
    <div class="form-search">
        <input id="search" type="text" name="q" value="" class="input-text" maxlength="128" />
        <button type="submit" title="Search" class="button-search"><span>Search</span></button>
        <div id="search_autocomplete" class="search-autocomplete"></div>
        <script type="text/javascript">
        //<![CDATA[
            var searchForm = new Varien.searchForm('search_mini_form', 'search', 'Bạn muốn tìm gì hôm nay?');
            searchForm.initAutocomplete('http://www.dev-mdl.in/metroshop/index.php/catalogsearch/ajax/suggest/', 'search_autocomplete');
        //]]>
        </script>
    </div>
    </form>
    <!-- Menu -->
    <div class="nav-container span12">   
     <ul id="nav">
        <li class="home"><a href="#">Home</a></li>
        <li  class="level0 nav-1 first level-top parent">
            <a href="#"  class="level-top" ><span>Menu 1</span></a>
            <ul class="level0">
                <li  class="level1 nav-1-1 first parent">
                    <a href="#" ><span>Khu vực 1</span></a>
                    <ul class="level1">
                        <li  class="level2 nav-1-1-1 first">
                            <a href="#" ><span>Submenu 1</span></a>
                        </li>
                        <li  class="level2 nav-1-1-2">
                            <a href="#" ><span>Submenu 2</span></a>
                        </li>
                        <li  class="level2 nav-1-1-3">
                            <a href="#" ><span>Submenu 3</span></a>
                        </li>
                        <li  class="level2 nav-1-1-4 last">
                            <a href="#" ><span>Submenu 4</span></a>
                        </li>
                    </ul>
                </li>
                <li  class="level1 nav-1-2 parent">
                    <a href="#" ><span>Khu vực 2</span></a>
                    <ul class="level1">
                        <li  class="level2 nav-1-2-1 first">
                            <a href="#" ><span>Submenu 1</span></a>
                        </li>
                        <li  class="level2 nav-1-2-2">
                            <a href="#" ><span>Submenu 2</span></a>
                        </li>
                        <li  class="level2 nav-1-2-3">
                            <a href="#" ><span>Submenu 3</span></a>
                        </li>
                        <li  class="level2 nav-1-2-4 last">
                            <a href="#" ><span>Submenu 4</span></a>
                        </li>
                    </ul>
                </li>
                <li  class="level1 nav-1-3 parent">
                    <a href="#" ><span>Khu vực 3</span></a>
                    <ul class="level1">
                        <li  class="level2 nav-1-3-1 first">
                            <a href="#" ><span>Submenu 1</span></a>
                        </li>
                        <li  class="level2 nav-1-3-2">
                            <a href="#" ><span>Submenu 2</span></a>
                        </li>
                        <li  class="level2 nav-1-3-3">
                            <a href="#" ><span>Submenu 3</span></a>
                        </li>
                        <li  class="level2 nav-1-3-4">
                            <a href="#" ><span>Submenu 4</span></a>
                        </li>
                        <li  class="level2 nav-1-3-5 last">
                            <a href="#" ><span>Submenu 5</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li  class="level0 nav-2 level-top parent">
            <a href="#"  class="level-top" ><span>Menu 2</span></a>
        </li>
        <li  class="level0 nav-3 level-top parent">
            <a href="#"  class="level-top" ><span>Menu 3</span></a>
        </li>
        <li  class="level0 nav-4 level-top parent">
            <a href="#"  class="level-top" ><span>Menu 4</span></a>
        </li>
    </ul>
</div>
<!--Báº¥t Äáº§u menu giao diá»n moblie -->
<div class="mobMenu span12">
<h1>
<span>Menu</span>
<a class="menuBox highlight" href="javascript:void(0);">ccc</a>
<span class="clearfix"></span>
</h1>
<div id="menuInnner" style="display:none;">
       <ul class="accordion">
         <li  class="level0 nav-1 first level-top parent">
            <a href="#"  class="level-top" ><span>Menu 1</span></a>
            <ul class="level0">
                <li  class="level1 nav-1-1 first parent">
                    <a href="#" ><span>Khu vực 1</span></a>
                    <ul class="level1">
                        <li  class="level2 nav-1-1-1 first">
                            <a href="#" ><span>Submenu 1</span></a>
                        </li>
                        <li  class="level2 nav-1-1-2">
                            <a href="#" ><span>Submenu 2</span></a>
                        </li>
                        <li  class="level2 nav-1-1-3">
                            <a href="#" ><span>Submenu 3</span></a>
                        </li>
                        <li  class="level2 nav-1-1-4 last">
                            <a href="#" ><span>Submenu 4</span></a>
                        </li>
                    </ul>
                </li>
                <li  class="level1 nav-1-2 parent">
                    <a href="#" ><span>Khu vực 2</span></a>
                    <ul class="level1">
                        <li  class="level2 nav-1-2-1 first">
                            <a href="#" ><span>Submenu 1</span></a>
                        </li>
                        <li  class="level2 nav-1-2-2">
                            <a href="#" ><span>Submenu 2</span></a>
                        </li>
                        <li  class="level2 nav-1-2-3">
                            <a href="#" ><span>Submenu 3</span></a>
                        </li>
                        <li  class="level2 nav-1-2-4 last">
                            <a href="#" ><span>Submenu 4</span></a>
                        </li>
                    </ul>
                </li>
                <li  class="level1 nav-1-3 parent">
                    <a href="#" ><span>Khu vực 3</span></a>
                    <ul class="level1">
                        <li  class="level2 nav-1-3-1 first">
                            <a href="#" ><span>Submenu 1</span></a>
                        </li>
                        <li  class="level2 nav-1-3-2">
                            <a href="#" ><span>Submenu 2</span></a>
                        </li>
                        <li  class="level2 nav-1-3-3">
                            <a href="#" ><span>Submenu 3</span></a>
                        </li>
                        <li  class="level2 nav-1-3-4">
                            <a href="#" ><span>Submenu 4</span></a>
                        </li>
                        <li  class="level2 nav-1-3-5 last">
                            <a href="#" ><span>Submenu 5</span></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li  class="level0 nav-2 level-top parent">
            <a href="#"  class="level-top" ><span>Menu 2</span></a>
        </li>
        <li  class="level0 nav-3 level-top parent">
            <a href="#"  class="level-top" ><span>Menu 3</span></a>
        </li>
        <li  class="level0 nav-4 level-top parent">
            <a href="#"  class="level-top" ><span>Menu 4</span></a>
        </li>
       </ul>     
 </div><!-- Káº¿t thÃºc giao diá»n moblie -->

</div>
    </div>
</div> 

<!-- Form đăng ký -->
<div class="main-container col1-layout">
    <div class="main span12">
        <div class="col-main">
            <div class="account-create">
                <div class="page-title">
                    <h1>So sánh điện thoại</h1>
                </div>
          <!-- Hiển thị nội dung -->
          <br></br>
          <ul class="nav nav-pills">
   		  	<li class="active"><a href="${pageContext.request.contextPath}/xoaSoSanh">Gở bỏ tất cả điện thoại so sánh</a></li>
   		  </ul>
   		  <br></br>
    <script type="text/javascript">
    //<![CDATA[
        var dataForm = new VarienForm('form-validate', true);
            //]]>
    </script>
</div>
                </div>
                
                <div>    
    <table class="table table-striped">

	    <tbody>
	    	<tr>
	        	<th>Ảnh đại diện</th>
	        	<c:forEach items="${dienThoais}" var="dienThoais" >
	        		<c:forEach items="${dienThoais.anhDts}" var="anhDts" end="0">
						<td><img width="150" height="200" src="${pageContext.request.contextPath}/getUserImage/${anhDts.maAnh }" /></td>
					</c:forEach>
	            </c:forEach>
	        </tr>
		    <tr>
	        	<th>Tên điện thoại</th>
	        	<c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.tenDt }</td>
	            </c:forEach>
	        </tr>
	    	<tr>
	        	<th>Hệ điều hành</th>
	        	<c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.heDieuHanh }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Ngôn ngữ</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.ngonNgu }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Loại màn hình</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.loaiManHinh }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Hiển thị màu màn hình</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.mauManHinh }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Độ phân giải</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.doPhanGiai }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Kích thước màn hình</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.ktManHinh }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Loại cảm ứng</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.camUng }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Camera sau</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.cameraSau }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Camera trước</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.cameraTruoc }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Quay phim</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.quayPhim }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Tốc độ CPU</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.tocDoCpu }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Chipset</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.chipset }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>RAM</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.ram }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>ROM</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.rom }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Thẻ nhớ ngoài</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.theNhoNgoai }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Kiểu dáng</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.kieuDang }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Kích thước</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.kichThuoc }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Trọng lượng</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.trongLuong }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Loại pin</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.loaiPin }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Kết nối ngoài</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.knNgoai }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Kết nối ngoài khác</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.knKhac }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Loại sim</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.loaiSim }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Xem phim</th>
	            <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.xemPhim }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Nghe nhạc</th>
	           <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.ngheNhac }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Chức năng khác</th>
	           <c:forEach items="${dienThoais}" var="dienThoais" >
	        		<td> ${dienThoais.cauHinh.chucNangKhac }</td>
	            </c:forEach>
	        </tr>
	        <tr>
	        	<th>Xóa khỏi so sánh</th>
	           	<c:forEach items="${dienThoais}" var="dienThoais" >
	           		<td>
		           		<ul class="nav nav-pills">
				   		  	<li class="active"><a href="${pageContext.request.contextPath}/goSoSanh/${dienThoais.maDt }">Gở so sánh</a></li>
				   		</ul>
			   		</td>
	            </c:forEach>
	        </tr>
	     </tbody>
	     
	     
	</table>
</div>
            </div>
        </div>
        <!-- Káº¿t thÃºc form đăng ký -->







    </div>
            <div class="footer-container">

 <div class="footer">
				<div class="footer_bottom span12">
					<div class="link_box">
						<div class="span3">
							<h3>Thành viên tham giá</h3>
							<ul class="footer_links">
								<li>Quách Hoàng Phúc</li>
								<li>Nguyễn Chí Tâm</li>
								<li>Nguyễn Quí Nghĩa</li>
								<li>Nguyễn Hoài Nam</li>
							</ul>
						</div>
						<div class="span3">
							<h3>Địa chỉ cửa hàng</h3>
							<ul class="footer_links">
								<li>Công Ty Cổ Phần NPT</li>
								<li>Số 37, Quản Trọng Hoàng</li>
								<li>Phường Hưng Lợi, Quận Ninh Kiều</li>
								<li>Thành phố Cần Thơ</li>
							</ul>
						</div>
						<div class="span3">
							<h3>Thông tin liên lạc</h3>
							<ul class="footer_links connect">
								<li class="f-phone">Số điện thoại: 0710 xxx xxx</li>
								<li class="f-email">nienluan_nhom7@gmail.com</li>
								<li class="f-address">Find us on Google Map</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="copyright">
					<div class="copyrightBox span12">
						<p class="copyText">&copy; Đề tài niên luận kỹ thuật phần mềm nhóm 7 - 
							2014</p>
					</div>
				</div>
				<div class="clear"></div>
			</div>
</div>
<div id="back-top" class="goTop"><a rel="tooltip" title="Vá» Äáº§u trang" href="javascript:void(0);">BackTop</a></div>        <script type="text/javascript">
    var ajax_cart_show_popup = 1;
            
    var loadingW = 260;
    var loadingH = 50;
    var confirmW = 320;
    var confirmH = 134;

</script>

<div class="mdl-overlay" id="mdl-overlay" style="display: none;">&nbsp;</div>

<div style="display: none; width: 260px; height: 50px; top: 550px;" class="mdlajax-progress" id="mdl_ajax_progress">
        &nbsp;
</div>
<div class="mdl-loading-data" id="mdl-loading-data" style="display: none;">
    <img alt="loading..." src="http://www.dev-mdl.in/metroshop/skin/frontend/default/metrostore/images/mdl/ajax-loader.gif"/>
    <p>loading...</p>
</div>

<div style="display: none; width: 320px; height: 134px; position: fixed; top: 496px;" class="mdlajax-confirm" id="mdl_ajax_confirm">
        &nbsp;
</div>

<div id="mdl-temp-div" style="display:none;"></div>     </div>
</div>
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
