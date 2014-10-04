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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/mytheme/js/eebc76f01a8340aa21a24b69475b71fb.js"></script>
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
                    <h1>Đăng ký tài khoản mới</h1>
                </div>
           <form:form role="form" action="/capnhattaikhoan.do" commandName="taikhoan" method="post">
								<div class="form-group">
									<label><!-- Mã tài khoản --></label>
									<form:input type="hidden" class="form-control" path="maTk"
										placeholder="Mã tài khoản"/>
										<p class="thongbao"></p>
								</div>
								<div class="form-group">
									<label>Tên tài khoản</label>
									<form:input type="text" class="form-control" path="tenTk"/>
										<p class="thongbao"></p>
								</div>
								<div class="form-group">
									<label>Mật khẩu</label>
									<form:input type="password" class="form-control" path="matKhau"
										placeholder="Mật khẩu"/>
										<p class="thongbao"></p>
								</div>
								<div class="form-group">
									<label>Giới tính</label>
									<form:input type="number" class="form-control" path="gioiTinh"/>
										<p class="thongbao" ></p>
								</div>
								<div class="form-group">
									<label>Địa chỉ Email</label>
									<form:input type="email" class="form-control" path="email"/>
										<p class="thongbao" ></p>
								</div>
								<div class="form-group">
									<label>Địa chỉ</label>
									<form:input type="text" class="form-control" path="diaChi"/>
										<p class="thongbao" ></p>
								</div>
								<div class="form-group">
									<label>Số điện thoại</label>
									<form:input type="text" class="form-control" path="sdt"/>
										<p class="thongbao" ></p>
								</div>
								<div class="form-group">
									<label>Năm sinh</label>
									<form:input type="number" class="form-control" path="namSinh"/>
										<p class="thongbao" ></p>
								</div>
								<input type="submit" value="Save" class="btn btn-default" />
								<input type="reset" value="Reset" class="btn btn-default" />
							</form:form>
    <script type="text/javascript">
    //<![CDATA[
        var dataForm = new VarienForm('form-validate', true);
            //]]>
    </script>
</div>
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
							<h3>Chức năng</h3>
							<ul class="footer_links">
								<li><a href="dangnhap.jsp">Đăng nhập</a></li>
								<li><a href="lienhe.jsp">Liên hệ</a></li>
								<li><a href="giohang.jsp">Giỏ hàng</a></li>
								<li><a href="thanhtoan.jsp">Thanh toán</a></li>
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
