<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Đăng nhập</title>
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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/superfish.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/proNav.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/styles.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/responsive.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/themeColor.php" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/widgets.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/mix.css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/print.css" media="print" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/mytheme/css/myStyle.css">
<script type="text/javascript" src="js/eebc76f01a8340aa21a24b69475b71fb.js"></script>


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
                       <li class="myaccount"><a href="${pageContext.request.contextPath}/dangnhap.html"
												title="Đăng ký">Đăng ký</a></li>
                        <li class=" last" ><a href="login.jsp" title="Đăng nhập" >Đăng nhập</a></li>
            </ul>
             <div class="block block-cart header_cart">
        <div class="block-content_pan">
        
   
    <div class="remain_cart" id="minicart">
    <div class="minicartInner">
                    <p class="empty">You have no items in your shopping cart.</p>
        </div>
    </div>
</div>
</div>
<script type="text/javascript">
    jQuery(function() {
        jQuery(".header_cart").hover(function() {
            jQuery(this).addClass('active');
            jQuery("#minicart").stop(true, true).delay(300).slideDown(200, "easeInSine");
            },  
            function() {
            jQuery("#minicart").stop(true, true).delay(300).fadeOut(100, "easeInCubic");
            });

    });
</script>

             
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
            var searchForm = new Varien.searchForm('search_mini_form', 'search', 'bạn muá»n tÃ¬m gÃ¬ hÃ´m nay?');
            searchForm.initAutocomplete('http://www.dev-mdl.in/metroshop/index.php/catalogsearch/ajax/suggest/', 'search_autocomplete');
        //]]>
        </script>
    </div>
    </form>
    <div class="nav-container span12">
    
     <ul id="nav">
        <li class="home"><a href="#">Home</a></li>
        <li  class="level0 nav-1 first level-top parent">
            <a href="#"  class="level-top" ><span>Menu 1</span></a>
            <ul class="level0">
                <li  class="level1 nav-1-1 first parent">
                    <a href="#" ><span>Khu vá»±c 1</span></a>
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
                    <a href="#" ><span>Khu vá»±c 2</span></a>
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
                    <a href="#" ><span>Khu vá»±c 3</span></a>
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
    </div>
</div> 

<!-- Form ÄÄng nháº­p -->
<div class="main-container col1-layout">
    <div class="main span12">
        <div class="col-main">
            <div class="account-login span4"> 
                    <div class="col2-set">            
                        <div class="login_box">
                            <div class="content">
                                <h2>Đăng nhập Tài khoản</h2>
                                <p>Nếu bạn chưa có Tài khoản. Vui lòng đăng ký Tài khoản mới</p>
                                <ul class="form-list">
                                    <form:form role="form" action="dangnhap.do" commandName="taiKhoan">
										<div class="input-box">
											<span class="userName">&nbsp;&nbsp;&nbsp; Tài khoản</span>
											<form:input type="text" class="input-text required-entry validate-email" path="tenTk"
												placeholder="Nhập tên tài khoản"/>
												<p class="thongbao" id="msUser"></p>
										</div>
										<div class="input-box">
											<span class="passWord">&nbsp;&nbsp;&nbsp;   Mật khẩu</span>
											<form:input type="password" class="input-text required-entry validate-password" path="matKhau"
												placeholder="Mật khẩu"/>
												<p class="thongbao" id="msPass"></p>
										</div>
										<p class="left"><a href="#" class="f-left">Bạn quên mật khẩu</a></p>
										 <div class="login-buttons-set">
										 	<input type=submit name="action"value="Đăng nhập" class="btn btn-default" />
											<input type=reset value="Làm lại" class="btn btn-default" />
		                  				 </div>
									</form:form>				
                                </ul>
                               
	                   
	                    
                    

                    
                </div>
            </div>
        </div>
        
    <script type="text/javascript">
    //<![CDATA[
        var dataForm = new VarienForm('login-form', true);
    //]]>
    </script>
</div>
                </div>
            </div>
        </div>







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
<div id="back-top" class="goTop"><a rel="tooltip" title="Vá» Äáº§u trang" data-placement="left" href="javascript:void(0);">BackTop</a></div>        <script type="text/javascript">
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
