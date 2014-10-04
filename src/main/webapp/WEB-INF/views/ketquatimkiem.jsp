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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Niên Luận Kỹ thuật phần mềm nhóm 7</title>
<meta name="description" content="Default Description" />
<meta name="keywords" content="Magento, Varien, E-commerce" />
<meta name="robots" content="INDEX,FOLLOW" />
<!-- <link rel="icon" href="http://www.dev-mdl.in/metroshop/skin/frontend/default/default/favicon.ico" type="image/x-icon" /> -->

<script type="text/javascript">
	//<![CDATA[
	var BLANK_URL = 'http://www.dev-mdl.in/metroshop/js/blank.html';
	var BLANK_IMG = 'http://www.dev-mdl.in/metroshop/js/spacer.gif';
	//]]>
</script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/superfish.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/proNav.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/styles.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/responsive.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/themeColor.php"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/widgets.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/mix.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/print.css"
	media="print" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/mytheme/js/eebc76f01a8340aa21a24b69475b71fb.js"></script>
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
	Mage.Cookies.path = '/metroshop';
	Mage.Cookies.domain = '.www.dev-mdl.in';
	//]]>
</script>

<script type="text/javascript">
	//<![CDATA[
	optionalZipCountries = [ "HK", "IE", "MO", "PA" ];
	//]]>
</script>
<script type="text/javascript">
	//<![CDATA[
	var Translator = new Translate([]);
	//]]>
</script>

</head>
<body id="bg_color" class=" cms-page-view cms-home">
	<div class="wrapper">
		<noscript>
			<div class="global-site-notice noscript">
				<div class="notice-inner">
					<p>
						<strong>JavaScript seems to be disabled in your browser.</strong><br />
						You must have JavaScript enabled in your browser to utilize the
						functionality of this website.
					</p>
				</div>
			</div>
		</noscript>
		<div class="page container">
			<div class="header-container">
				<div class="header">
					<div class="full-width">
						<div class="bottomBar span12">
							<a href="${pageContext.request.contextPath}/" title="Trang chủ" class="logo"><strong>Trang chủ</strong><img
								src="${pageContext.request.contextPath}/resources/mytheme/images/it_logo.png"
								alt="Trang chủ" /></a>
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
									        <li class="first"><a href="${pageContext.request.contextPath}/lienhe" title="Liên hệ"
												class="contact">Liên hệ ${maLoaiTk }</a></li>
											<li><a href="${pageContext.request.contextPath}/soSanh" title="So sánh điện thoại"
												class="top-link-checkout">So sánh</a></li>
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
						
					<form:form role="form" action="/search.do" commandName="chuoiTimKiem" method="post">
						<div class="form-group form-search">
							<form:input type="text" class="form-control input-text" path="value"
								placeholder="Bạn muốn tìm gì?"/>
							<input type="submit" value="Search" class="btn btn-default" />
						</div>
						
					</form:form>
					
					
					<div class="nav-container span12">

						<ul id="nav">
							<li class="home"><a href="#">Home</a></li>
							<li class="level0 nav-1 first level-top parent"><a href="#"
								class="level-top"><span>Menu 1</span></a>
								<ul class="level0">
									<li class="level1 nav-1-1 first parent"><a href="#"><span>Khu
												vực 1</span></a>
										<ul class="level1">
											<li class="level2 nav-1-1-1 first"><a href="#"><span>Submenu
														1</span></a></li>
											<li class="level2 nav-1-1-2"><a href="#"><span>Submenu
														2</span></a></li>
											<li class="level2 nav-1-1-3"><a href="#"><span>Submenu
														3</span></a></li>
											<li class="level2 nav-1-1-4 last"><a href="#"><span>Submenu
														4</span></a></li>
										</ul></li>
									<li class="level1 nav-1-2 parent"><a href="#"><span>Khu
												vực 2</span></a>
										<ul class="level1">
											<li class="level2 nav-1-2-1 first"><a href="#"><span>Submenu
														1</span></a></li>
											<li class="level2 nav-1-2-2"><a href="#"><span>Submenu
														2</span></a></li>
											<li class="level2 nav-1-2-3"><a href="#"><span>Submenu
														3</span></a></li>
											<li class="level2 nav-1-2-4 last"><a href="#"><span>Submenu
														4</span></a></li>
										</ul></li>
									<li class="level1 nav-1-3 parent"><a href="#"><span>Khu
												vực 3</span></a>
										<ul class="level1">
											<li class="level2 nav-1-3-1 first"><a href="#"><span>Submenu
														1</span></a></li>
											<li class="level2 nav-1-3-2"><a href="#"><span>Submenu
														2</span></a></li>
											<li class="level2 nav-1-3-3"><a href="#"><span>Submenu
														3</span></a></li>
											<li class="level2 nav-1-3-4"><a href="#"><span>Submenu
														4</span></a></li>
											<li class="level2 nav-1-3-5 last"><a href="#"><span>Submenu
														5</span></a></li>
										</ul></li>
								</ul></li>
							<li class="level0 nav-2 level-top parent"><a href="#"
								class="level-top"><span>Menu 2</span></a></li>
							<li class="level0 nav-3 level-top parent"><a href="#"
								class="level-top"><span>Menu 3</span></a></li>
							<li class="level0 nav-4 level-top parent"><a href="#"
								class="level-top"><span>Menu 4</span></a></li>
						</ul>
					</div>
				</div>
			</div>


			<!-- Báº¥t Äáº§u pháº§n hiá»n sáº£n pháº©m-->
			<div class="main-container col1-layout">
				<div class="main span12">
					<div class="col-main">
						<div class="std">
							<!--banner content static block content-->
							


							
							<div class="col2-left-layout span12">
								<div class="col-main span9 sideCol-right">
									<div class="slider-box">
										<script type="text/javascript"
											src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.carouFredSel-6.1.0-packed.js"></script>
										<script type="text/javascript"
											src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.touchSwipe.min.js"></script>
									</div>
									<div class="slider-box">
										<div class="headingBox">
											<span class="headingIcons newProductsIcon"></span>
											<h1 class="line_heading">Kết quả tìm kiếm</h1>
											<a class="viewAll"
												href="http://www.dev-mdl.in/metroshop/index.php/women.html"
												title="Hiá»n thá» táº¥t cáº£" rel="tooltip"
												data-placement="left">Hiá»n thá» táº¥t cáº£</a>
										</div>
										<div class="category-products">
											<script type="text/javascript">
												jQuery(document)
														.ready(
																function() {
																	var itemContainerWidth = jQuery(
																			'.category-products')
																			.width() - 12;
																	var rowPro = 4;
																	var windowBox = jQuery(
																			window)
																			.width();
																	var newPro = jQuery('.newProducts .item');
																	var resize;
																	if (windowBox > 1200) {
																		newPro
																				.width((itemContainerWidth / rowPro) - 12);
																	} else {
																		newPro
																				.css({
																					width : ''
																				});
																	}
																	;

																	jQuery(
																			window)
																			.resize(
																					function() {
																						return resize();
																					});
																	window.onorientationchange = function() {
																		return resize();
																	};
																	resize = function() {
																		var newPro = jQuery('.newProducts .item');
																		var itemContainerWidth = jQuery(
																				'.category-products')
																				.width() - 12;
																		var rowPro = 4;
																		var windowBox = jQuery(
																				window)
																				.width();
																		if (windowBox > 1200) {
																			newPro
																					.width((itemContainerWidth / rowPro) - 12);
																		} else {
																			newPro
																					.css({
																						width : ''
																					});
																		}
																		;
																	}
																});
											</script>
											<ul class="newProducts itemPro item4">
												<c:forEach items="${dienThoais}" var="dienThoais">
													<!-- 1 san pham -->
													<li class="item">
														<div class="itemInner">
															<a href="${pageContext.request.contextPath}/chitietdienthoai/${dienThoais.maDt }" class="product-image"> 
																<c:forEach items="${dienThoais.anhDts}" var="anhDts" end="0">
																	<img width="350" height="400" src="${pageContext.request.contextPath}/getUserImage/${anhDts.maAnh }" />
																</c:forEach>
																<c:forEach items="${dienThoais.anhDts}" var="anhDts" begin="1" end="1">
																	<img width="350" height="400" class="hoverImg" src="${pageContext.request.contextPath}/getUserImage/${anhDts.maAnh }" border="0" />
																</c:forEach>
															</a>
															
															
															<div class="ic_caption">
																<h2 class="product-name">
																	<a href="#">${dienThoais.tenDt }</a>
																</h2>
																<div class="price-box">
																	<span class="regular-price" id="product-price-177-right">
																		<span class="price">
																			<c:forEach var="donGia" items="${dienThoais.donGias}" end="0">
																			     <c:out value="${donGia.gia } ${donGia.donVi }"/><br>
																			</c:forEach>
																		</span>
																	</span>
																</div>
																<div class="bottomBox">
																	<div class="buttonox">
																		<button type="button" title="Thêm vào giỏ hàng"
																			class="button btn-cart"
																			onclick="setLocation('http://www.dev-mdl.in/metroshop/index.php/checkout/cart/add/uenc/aHR0cDovL3d3dy5kZXYtbWRsLmluL21ldHJvc2hvcC9pbmRleC5waHAvaG9tZS8_X19fc3RvcmU9ZGVmYXVsdA,,/product/177/')">
																			<span><span>Thêm vào giỏ hàng</span></span>
																		</button>
																	</div>
																	<div class="addBox">
																		<a href="${pageContext.request.contextPath}/themvaososanh/${dienThoais.maDt }" title="So sánh" rel="tooltip"
																			data-placement="top" class="link-compare">So sánh</a>
																	</div>
																</div>
															</div>
															
															
														</div>
													</li>
												<!-- ket thuc 1 san pham -->
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<div class="sidebar span3 sideColBar-right">
									<link rel="stylesheet" type="text/css"
										href="${pageContext.request.contextPath}/resources/mytheme/css/flexslider.css"
										media="all" />
									<script type="text/javascript"
										src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.flexslider.js"></script>
									<script type="text/javascript"
										src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.touchSwipe.min.js"></script>
									<script type="text/javascript">
										jQuery(document).ready(
												function() {
													jQuery('.flexsliderSide')
															.flexslider();
												});
									</script>
								</div>
							</div>

							<!--end -->
						</div>
					</div>
				</div>
			</div>
			<!--Káº¿t thÃºc pháº§n hiá»n sáº£n pháº©m -->






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
		<div id="back-top" class="goTop">
			<a rel="tooltip" title="Vá» Äáº§u trang" data-placement="left"
				href="javascript:void(0);">BackTop</a>
		</div>
		<script type="text/javascript">
			var ajax_cart_show_popup = 1;

			var loadingW = 260;
			var loadingH = 50;
			var confirmW = 320;
			var confirmH = 134;
		</script>

		<div class="mdl-overlay" id="mdl-overlay" style="display: none;">&nbsp;</div>

		<div style="display: none; width: 260px; height: 50px; top: 550px;"
			class="mdlajax-progress" id="mdl_ajax_progress">&nbsp;</div>
		<div class="mdl-loading-data" id="mdl-loading-data"
			style="display: none;">
			<img alt="loading..."
				src="http://www.dev-mdl.in/metroshop/skin/frontend/default/metrostore/images/mdl/ajax-loader.gif" />
			<p>loading...</p>
		</div>

		<div
			style="display: none; width: 320px; height: 134px; position: fixed; top: 496px;"
			class="mdlajax-confirm" id="mdl_ajax_confirm">&nbsp;</div>

		<div id="mdl-temp-div" style="display: none;"></div>
	</div>
	
</body>
</html>
