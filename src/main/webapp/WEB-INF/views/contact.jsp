<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Liên hệ</title>
<meta name="description" content="Default Description" />
<meta name="keywords" content="Magento, Varien, E-commerce" />
<meta name="robots" content="INDEX,FOLLOW" />
<!-- <link rel="icon" href="http://www.dev-mdl.in/metroshop/skin/frontend/default/default/favicon.ico" type="image/x-icon" /> -->
<link rel="shortcut icon" href="http://www.dev-mdl.in/metroshop/skin/frontend/default/default/favicon.ico" type="image/x-icon" />
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
                        <c:choose>
										<c:when test="${maloaitaikhoan == 1}">
									        <li class="first"><a href="${pageContext.request.contextPath}/lienhe" title="Liên hệ"
												class="contact">Liên hệ</a></li>
											<li class="myaccount"><a href="${pageContext.request.contextPath}/capnhattaikhoan.html"
												title="Tài khoản">Tài khoản</a></li>
											<li class="myaccount"><a href="${pageContext.request.contextPath}/dangxuat.html"
												title="Đăng xuất">Đăng xuất</a></li>
											</ul>
									    </c:when>
									    <c:when test="${maloaitaikhoan == 2}">
									        <li class="first"><a href="${pageContext.request.contextPath}/lienhe" title="Liên hệ"
												class="contact">Liên hệ</a></li>
											<li class="myaccount"><a href="${pageContext.request.contextPath}/capnhattaikhoan.html"
												title="Tài khoản">Tài khoản</a></li>
											<li class="myaccount"><a href="${pageContext.request.contextPath}/dangxuat.html"
												title="Đăng xuất">Đăng xuất</a></li>
											</ul>
									    </c:when>
									    <c:when test="${maloaitaikhoan == 3}">
									        <li class="first"><a href="${pageContext.request.contextPath}/lienhe" title="Liên hệ"
												class="contact">Liên hệ</a></li>
											<li class="myaccount"><a href="${pageContext.request.contextPath}/capnhattaikhoan.html"
												title="Tài khoản">Tài khoản</a></li>
											<li><a href="thanhtoan.jsp" title="Thanh toán"
												class="top-link-checkout">Thanh toán</a></li>
											<li><a href="${pageContext.request.contextPath}/soSanh" title="So sánh điện thoại"
												class="top-link-checkout">So sánh</a></li>
											<li class=" last"><a href="${pageContext.request.contextPath}/dangxuat.html"
												title="Đăng xuất">Đăng xuất</a></li>
												</ul>
								<div class="block block-cart header_cart">
									<div class="block-content_pan">
										<div class="summary">
											<em class="bag">Giỏ hàng</em>
											<h2 class="classy"></h2>
										</div>

										<div class="remain_cart" id="minicart">
											<div class="minicartInner">
												<p class="empty">You have no items in your shopping
													cart.</p>
											</div>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									jQuery(function() {
										jQuery(".header_cart").hover(
												function() {
													jQuery(this).addClass(
															'active');
													jQuery("#minicart").stop(
															true, true).delay(
															300).slideDown(200,
															"easeInSine");
												},
												function() {
													jQuery("#minicart").stop(
															true, true).delay(
															300).fadeOut(100,
															"easeInCubic");
												});

									});
								</script>
									    </c:when>
									    <c:otherwise>
									        <li class="first"><a href="contact.jsp" title="Liên hệ"
												class="contact">Liên hệ ${maLoaiTk }</a></li>
											<li class="myaccount"><a href="${pageContext.request.contextPath}/dangky.html"
												title="Đăng ký">Đăng ký</a></li>
											<li class=" last"><a href="${pageContext.request.contextPath}/dangnhap.html"
												title="Đăng nhập">Đăng nhập</a></li>
									    </c:otherwise>
									</c:choose>
             
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
            var searchForm = new Varien.searchForm('search_mini_form', 'search', 'Bạn muốn tìm gì?');
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
   
    <div class="page-title">
        <h1>Liên hệ</h1>
    </div>

        <body onLoad="initialize()">
        <div id="map_canvas" style="width:100%; margin-top:12px; height:400px"></div>
        </body>
            <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
                <script type="text/javascript">
                    function initialize() {
                        var latlng = new google.maps.LatLng(10.023335,105.7688477);
                        var settings = {
                            zoom: 15,
                            center: latlng,
                            mapTypeControl: true,
                            mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
                            navigationControl: true,
                            navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
                            mapTypeId: google.maps.MapTypeId.ROADMAP};
                                var map = new google.maps.Map(document.getElementById("map_canvas"), settings);
                                
                                var contentString = '<div id="content">'+
                                    '<div id="siteNotice">'+
                                    '</div>'+
                                    '<h1 id="firstHeading" class="firstHeading">Cá»­a hàng Äiá»n thoáº¡i NPT</h1>'+
                                    '<div id="bodyContent">'+
                                    '<p style="width:250px;">Sá» 37, Quáº£ng Trá»ng HoÃ ng, PhÆ°á»ng HÆ°ng Lá»£i, Quáº­n Ninh Kiá»u, TP Cáº§n ThÆ¡</p>'+
                                    '</div>'+
                                    '</div>';
                                var infowindow = new google.maps.InfoWindow({
                                    content: contentString
                                });
                                        var companyImage = new google.maps.MarkerImage('${pageContext.request.contextPath}/resources/mytheme/images/maplogo.png',
                            new google.maps.Size(100,50),
                            new google.maps.Point(0,0),
                            new google.maps.Point(50,50)
                        );

                        var companyShadow = new google.maps.MarkerImage('${pageContext.request.contextPath}/resources/mytheme/images/logo_shadow.png',
                            new google.maps.Size(130,50),
                            new google.maps.Point(0,0),
                            new google.maps.Point(65, 50));

                        var companyPos = new google.maps.LatLng(10.023335,105.7688477);

                        var companyMarker = new google.maps.Marker({
                            position: companyPos,
                            map: map,
                            icon: companyImage,
                            shadow: companyShadow,
                            title:"Cá»­a hàng Äiá»n thoáº¡i NPT",
                            zIndex: 3});
                        
                        google.maps.event.addListener(companyMarker, 'click', function() {
                            infowindow.open(map,companyMarker);
                        });
                    }
                </script>

<form action="http://www.dev-mdl.in/metroshop/index.php/contacts/index/post/" id="contactForm" method="post">
    <div class="fieldset">
        <h2 class="legend">Thông tin Liên hệ</h2>
        <ul class="form-list">
            <li class="fields">
                <div class="field">
                    <label for="name" class="required"><em>*</em>Họ và Tên</label>
                    <div class="input-box">
                        <input name="name" id="name" title="Name" value="" class="input-text required-entry" type="text" />
                    </div>
                </div>
                <div class="field">
                    <label for="email" class="required"><em>*</em>Email</label>
                    <div class="input-box">
                        <input name="email" id="email" title="Email" value="" class="input-text required-entry validate-email" type="text" />
                    </div>
                </div>
            </li>
            <li>
                <label for="telephone">Số điện thoại:
</label>
                <div class="input-box">
                    <input name="telephone" id="telephone" title="Telephone" value="" class="input-text" type="text" />
                </div>
            </li>
            <li class="wide">
                <label for="comment" class="required"><em>*</em>*Ý kiến đánh giá:
</label>
                <div class="input-box">
                    <textarea name="comment" id="comment" title="Comment" class="required-entry input-text" cols="5" rows="3"></textarea>
                </div>
            </li>
        </ul>
    </div>
    <div class="contactDetail">
         <div class="contactDetailBox">
    <h2 class="legend">Hòm thư chia sẻ thông tin</h2>
    <p>Hệ thống bán hàng trực tuyến của công ty NPT luôn mong muốn nhận được những ý kiến đóng góp phản ánh của quý khách về chất lượng sản phẩm, dịch vụ, website thương mại khi mua hàng tại NPT nhằm nâng cao chất lượng dịch vụ ngày càng tốt hơn.</p>
    <p>Quý khách vui lòng để lại thông tin liên hệ (Họ và Tên, Email, Số điện thoại, Ý kiến đánh giá..) trong nội dung phản ánh hoặc góp ý để chúng tôi chuyển đến bộ phận liên quan giải quyết cho quý khách.</p>
    <p>Trân trọng cảm ơn!</p>
  <address>
    CÔNG TY CỔ PHẦN ĐẦU TƯ CÔNG NGHỆ NPT,<br>
    Số 37 Quảng Trọng Hoàng,<br>
    Phường Hưng Lợi,<br>
    Quận Ninh Kiều,<br>
    TP Cần Thơ<br>

  </address> 
  <em>-</em><br>
  <em>-</em><br>
  <em>Địa chỉ email: </em> <br>
  <p><a target="_blank" href="mailto:lienhe@NPT.com" title="Email Us">lienhe@NPT.com</a><br>
</div> 
    </div>
        <input type="text" name="hideit" id="hideit" value="" style="display:none !important;" />
        <button type="submit" title="Submit" class="button"><span><span>Gá»­i</span></span></button>
    
    <br><br>
</form>
<script type="text/javascript">
//<![CDATA[
    var contactForm = new VarienForm('contactForm', true);
//]]>
</script>








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
</body>
</html>
