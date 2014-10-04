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
<title>Trang chi tiết sản phẩm</title>
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
	href="${pageContext.request.contextPath}/resources/mytheme/css/themeColor.php.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/widgets.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/mix.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/cloud-zoom.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/light_box.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/ajax_cart.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/skin.css"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/mytheme/css/print.css"
	media="print" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/mytheme/js/bcb782e038131b4e34718c6e8c333d7c.js"></script>
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
							<a href="${pageContext.request.contextPath}/" title="Trang chủ"
								class="logo"><strong>Trang chủ</strong><img
								src="${pageContext.request.contextPath}/resources/mytheme/images/it_logo.png"
								alt="Trang chủ" /></a>
							<div class="header-right">
								<ul class="links">
									<li class="first"><a href="contact.jsp" title="Liên hệ"
										class="contact">Liên hệ</a></li>
									<li class="myaccount"><a href="account.jsp"
										title="tài khoản">Tài khoản</a></li>
									<li><a href="thanhtoan.jsp" title="Thanh toán"
										class="top-link-checkout">Thanh toán</a></li>
									<li class=" last"><a href="login.jsp" title="Đăng nhập">Đăng
											nhập</a></li>
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


							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="nav-width">
				<div class="nav-width-inner">
					<form id="search_mini_form"
						action="http://www.dev-mdl.in/metroshop/index.php/catalogsearch/result/"
						method="get">
						<div class="form-search">
							<input id="search" type="text" name="q" value=""
								class="input-text" maxlength="128" />
							<button type="submit" title="Search" class="button-search">
								<span>Search</span>
							</button>
							<div id="search_autocomplete" class="search-autocomplete"></div>
							<script type="text/javascript">
								//<![CDATA[
								var searchForm = new Varien.searchForm(
										'search_mini_form', 'search',
										'Bạn muốn tìm gì hôm nay?');
								searchForm
										.initAutocomplete(
												'http://www.dev-mdl.in/metroshop/index.php/catalogsearch/ajax/suggest/',
												'search_autocomplete');
								//]]>
							</script>
						</div>
					</form>
					<!-- Menu -->
					<div class="nav-container span12">
						<ul id="nav">
							<li class="home"><a
								href="${pageContext.request.contextPath}/">Home</a></li>
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
					<!--Báº¥t Äáº§u menu giao diá»n moblie -->
					<div class="mobMenu span12">
						<h1>
							<span>Menu</span> <a class="menuBox highlight"
								href="javascript:void(0);">ccc</a> <span class="clearfix"></span>
						</h1>
						<div id="menuInnner" style="display: none;">
							<ul class="accordion">
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
						<!-- Káº¿t thÃºc giao diá»n moblie -->

					</div>
				</div>
			</div>

			<div class="main-container col1-layout">
				<div class="main span12">
					<div class="breadcrumbs">
						<ul>
							<li class="home"><a href="index.jsp" title="Go to Home Page">Home</a>
								<span>/ </span></li>
							<li class="product"><strong>${tenDienThoai }</strong></li>
						</ul>
					</div>
					<div class="col-main">
						<script type="text/javascript">
							var optionsPrice = new Product.OptionsPrice([]);
						</script>

						<div id="messages_product_view"></div>
						<div class="product-view">
							<a class="prePage" href="${pageContext.request.contextPath}/">Trở
								về trang chủ</a>
							<!--Prev/Next Code Start-->

							<!--Prev/Next Code End-->
							<div class="product-essential">
								<div class="product-img-box span4">
									<div class="badge"></div>


									<p class="product-image product-image-zoom">
										<a
											rel="zoomWidth: '800',zoomHeight: '800',position: 'inside',smoothMove: 3,showTitle: true,titleOpacity: 0.01,lensOpacity: 0.07,tintOpacity: 0,softFocus: false"
											href="images/sanpham1.jpg" class="cloud-zoom ajax"
											id="cloudZoom"> <img id="image"
											src="${pageContext.request.contextPath}/getUserImage/5"
											alt="Lorem ipsum dolor sit amet 01"
											title="Lorem ipsum dolor sit amet 01" />
										</a>
									</p>

									<div class="thumbbox">
										<div class="more-views">
											<ul>
												<c:forEach items="${dsHinhAnh}" var="dsHinhAnh">
													<li><a
														href="${pageContext.request.contextPath}/getUserImage/${ dsHinhAnh }"
														rel="popupWin:'${pageContext.request.contextPath}/getUserImage/${ dsHinhAnh }', useZoom: 'cloudZoom', smallImage: '${pageContext.request.contextPath}/getUserImage/${ dsHinhAnh }'"
														class="cloud-zoom-gallery" title=""> <img
															style="width: 60px; height: 60px;"
															src="${pageContext.request.contextPath}/getUserImage/${ dsHinhAnh }"
															alt="" />
													</a></li>
												</c:forEach>
											</ul>
										</div>
									</div>



									<script type="text/javascript">
										jQuery(document)
												.ready(
														function() {
															jQuery(
																	'.cloud-zoom-gallery')
																	.click(
																			function() {
																				var srcBox = jQuery(
																						'#image')
																						.attr(
																								'src');
																				jQuery(
																						'.zoomBtn')
																						.attr(
																								"href",
																								srcBox);
																			});

															jQuery(
																	'.more-views')
																	.jcarousel(
																			{
																				start : 1,
																				scroll : 1,
																				wrap : 'circular'
																			});
														});
									</script>

								</div>
								<div class="productDetailBox span8">
									<form action="" method="post" id="product_addtocart_form">
										<div class="no-display">
											<input type="hidden" name="product" value="161" /> <input
												type="hidden" name="related_product"
												id="related-products-field_1" value="" />
										</div>
										<div class="product-shop span6">
											<div class="product_left">
												<div class="product-name">
													<h1>${tenDienThoai }</h1>
												</div>
												<div class="stock_box">
													<c:if test="${soluongconlai>0 }">
														<p class="availability in-stock">
															Tình trạng: <span>Còn hàng</span>
														</p>
													</c:if>
													<c:if test="${soluongconlai<=0 }">
														<p class="availability out-of-stock">
															Tình trạng: <span>Hết hàng</span>
														</p>
													</c:if>
												</div>
												<div class="pro-left">
													<div class="short-description">
														<div class="std"></div>
													</div>

													<div class="add_to_cart">
														<div class="add-to-box">
															<div class="add-to-cart">
																<button type="button" title="Đặt hàng"
																	class="button btn-cart">
																	<span><span>Đặt hàng</span></span>
																</button>
															</div>
															<script type="text/javascript">
																jQuery(function() {

																	jQuery(
																			"div.add-to-cart .qty_pan")
																			.append(
																					'<div class="add">&#8250;</div><div class="dec add">&#8249;</div>');

																	jQuery(
																			".add")
																			.click(
																					function() {
																						var jQueryadd = jQuery(this);
																						var oldValue = jQueryadd
																								.parent()
																								.find(
																										"input")
																								.val();
																						var newVal = 0;

																						if (jQueryadd
																								.text() == "âº") {
																							newVal = parseFloat(oldValue) + 1;
																							// AJAX save would go here
																						} else {
																							// Don't allow decrementing below zero
																							if (oldValue >= 1) {
																								newVal = parseFloat(oldValue) - 1;
																								// AJAX save would go here
																							}
																							if (oldValue == 1) {
																								newVal = parseFloat(oldValue);
																							}
																						}
																						jQueryadd
																								.parent()
																								.find(
																										"input")
																								.val(
																										newVal);
																					});

																});
															</script>
															<div class="price_box">
																<div class="price-box">
																	<span class="regular-price" id="product-price-161">
																		<span class="price">${donGia.gia }
																			${donGia.donVi }</span>
																	</span>
																</div>
															</div>
														</div>
													</div>


													<ul class="add-to-links">
														<li><a rel="tooltip" data-placement="top"
															title="Thêm vào so sánh" href="" class="link-compare">Thêm
																vào so sánh</a></li>
													</ul>
													<script type="text/javascript"
														src="${pageContext.request.contextPath}/resources/mytheme/js/addthis_widget.js#pubid=vijaysahu"></script>
													<!-- AddThis Button END -->

												</div>

											</div>
										</div>
									</form>
								</div>

								<div class="product-collateral">
									<div class="tabs">
										<ul class="product-tabs">
											<li class="first"><a
												href="#product_tabs_description_contents">Thông tin sản
													phẩm</a></li>
											<li class=""><a href="#product_tabs_tabreviews_contents">Nhận
													xét của khách hàng</a></li>
										</ul>
										<div class="product-tabs-content"
											id="product_tabs_description_contents">
											<table class="data-table" id="product-attribute-specs-table">
												<col width="15%" />
												<col />
												<tbody>
													<tr>
														<th class="label">Hệ điều hành</th>
														<td class="data">${cauHinh.heDieuHanh }</td>
													</tr>
													<tr>
														<th class="label">Ngôn ngữ</th>
														<td class="data">${cauHinh.ngonNgu }</td>
													</tr>
													<tr>
														<th class="label">Loại màn hình</th>
														<td class="data">${cauHinh.loaiManHinh }</td>
													</tr>
													<tr>
														<th class="label">Hiển thị màu màn hình</th>
														<td class="data">${cauHinh.mauManHinh }</td>
													</tr>
													<tr>
														<th class="label">Độ phân giải</th>
														<td class="data">${cauHinh.doPhanGiai }</td>
													</tr>
													<tr>
														<th class="label">Kích thước màn hình</th>
														<td class="data">${cauHinh.ktManHinh }</td>
													</tr>
													<tr>
														<th class="label">Loại cảm ứng</th>
														<td class="data">${cauHinh.camUng }</td>
													</tr>
													<tr>
														<th class="label">Camera sau</th>
														<td class="data">${cauHinh.cameraSau }</td>
													</tr>
													<tr>
														<th class="label">Camera trước</th>
														<td class="data">${cauHinh.cameraTruoc }</td>
													</tr>
													<tr>
														<th class="label">Quay phim</th>
														<td class="data">${cauHinh.quayPhim }</td>
													</tr>
													<tr>
														<th class="label">Tốc độ CPU</th>
														<td class="data">${cauHinh.tocDoCpu }</td>
													</tr>
													<tr>
														<th class="label">Chipset</th>
														<td class="data">${cauHinh.chipset }</td>
													</tr>
													<tr>
														<th class="label">RAM</th>
														<td class="data">${cauHinh.ram }</td>
													</tr>
													<tr>
														<th class="label">ROM</th>
														<td class="data">${cauHinh.rom }</td>
													</tr>
													<tr>
														<th class="label">Thẻ nhớ ngoài</th>
														<td class="data">${cauHinh.theNhoNgoai }</td>
													</tr>
													<tr>
														<th class="label">Kiểu dáng</th>
														<td class="data">${cauHinh.kieuDang }</td>
													</tr>
													<tr>
														<th class="label">Kích thước</th>
														<td class="data">${cauHinh.kichThuoc }</td>
													</tr>
													<tr>
														<th class="label">Trọng lượng</th>
														<td class="data">${cauHinh.trongLuong }</td>
													</tr>
													<tr>
														<th class="label">Loại pin</th>
														<td class="data">${cauHinh.loaiPin }</td>
													</tr>
													<tr>
														<th class="label">Kết nối ngoài</th>
														<td class="data">${cauHinh.knNgoai }</td>
													</tr>
													<tr>
														<th class="label">Kết nối ngoài khác</th>
														<td class="data">${cauHinh.knKhac }</td>
													</tr>
													<tr>
														<th class="label">Loại sim</th>
														<td class="data">${cauHinh.loaiSim }</td>
													</tr>
													<tr>
														<th class="label">Xem phim</th>
														<td class="data">${cauHinh.xemPhim }</td>
													</tr>
													<tr>
														<th class="label">Nghe nhạc</th>
														<td class="data">${cauHinh.ngheNhac }</td>
													</tr>
													<tr>
														<th class="label">Chức năng khác</th>
														<td class="data">${cauHinh.chucNangKhac }</td>
													</tr>
												</tbody>


											</table>
										</div>
										<div class="product-tabs-content"
											id="product_tabs_tabreviews_contents">



											<div class="box-collateral box-reviews span6"
												id="customer-reviews">
													<div>
														<div class="logindiv2">
																<h1>Bình luận của bạn</h1><br>
																<form:form role="form" action="/themBinhLuan.do" commandName="chuoiTimKiem" method="post">
																	<div class="form-group">
																		<form:input type="text" class="form-control" path="value"/><br>
																		<input type="submit" value="Thêm bình luận" class="btn btn-default" /><br>
																	</div>
																</form:form>
														</div>

													<h1>Các bình luận của điện thoại</h1>
													<ul>
														<c:forEach items="${binhLuans }" var="binhLuans">
															<li>Thời gian bình luận: ${binhLuans.thoiGianBl }<br>
																Nội dung bình luận: ${binhLuans.noiDungBl }<br> Số
																lần báo vi phạm: ${binhLuans.baoViPham }<br>
															<Br>
															</li>
														</c:forEach>
													</ul>


												</div>
											</div>
										</div>
									</div>
									<script type="text/javascript">
										jQuery(document)
												.ready(
														function() {
															var tabContainers = jQuery('div.tabs > div');
															tabContainers
																	.hide()
																	.filter(
																			':first')
																	.show();
															jQuery(
																	'div.tabs ul.product-tabs a')
																	.click(
																			function() {
																				tabContainers
																						.hide();
																				tabContainers
																						.filter(
																								this.hash)
																						.fadeIn(
																								1000,
																								"jswing");
																				jQuery(
																						'div.tabs ul.product-tabs li')
																						.removeClass(
																								'active');
																				jQuery(
																						this)
																						.parent()
																						.addClass(
																								'active');
																				return false;
																			})
																	.filter(
																			':first')
																	.click();

															(function($) {
																var allPanels = $(
																		'.accordionRow > dd')
																		.hide();
																var allheads = $('.accordionRow > dt');
																allPanels
																		.filter(
																				':first')
																		.show();
																allheads
																		.filter(
																				':first')
																		.addClass(
																				'active');
																$(
																		'.accordionRow > dt > a')
																		.click(
																				function() {
																					allPanels
																							.slideUp();
																					allheads
																							.removeClass('active');
																					$(
																							this)
																							.parent()
																							.addClass(
																									'active');
																					$(
																							this)
																							.parent()
																							.next()
																							.slideDown();
																					return false;
																				});

															})(jQuery);

														});
									</script>
								</div>








							</div>
						</div>


						<script type="text/javascript">
							//<![CDATA[
							var productAddToCartForm = new VarienForm(
									'product_addtocart_form');
							productAddToCartForm.submit = function(button, url) {
								if (this.validator.validate()) {
									var form = this.form;
									var oldUrl = form.action;

									if (url) {
										form.action = url;
									}
									var e = null;
									try {
										this.form.submit();
									} catch (e) {
									}
									this.form.action = oldUrl;
									if (e) {
										throw e;
									}

									if (button && button != 'undefined') {
										button.disabled = true;
									}
								}
							}.bind(productAddToCartForm);

							productAddToCartForm.submitLight = function(button,
									url) {
								if (this.validator) {
									var nv = Validation.methods;
									delete Validation.methods['required-entry'];
									delete Validation.methods['validate-one-required'];
									delete Validation.methods['validate-one-required-by-name'];
									// Remove custom datetime validators
									for ( var methodName in Validation.methods) {
										if (methodName
												.match(/^validate-datetime-.*/i)) {
											delete Validation.methods[methodName];
										}
									}

									if (this.validator.validate()) {
										if (url) {
											this.form.action = url;
										}
										this.form.submit();
									}
									Object.extend(Validation.methods, nv);
								}
							}.bind(productAddToCartForm);
							//]]>
						</script>
						<script type="text/javascript">
							jQuery(document)
									.ready(
											function() {
												jQuery("a[rel=example_group]")
														.fancybox(
																{
																	'transitionIn' : 'none',
																	'transitionOut' : 'none',
																	'titlePosition' : 'over',
																	'titleFormat' : function(
																			title,
																			currentArray,
																			currentIndex,
																			currentOpts) {
																		return '<span id="fancybox-title-over">Image '
																				+ (currentIndex + 1)
																				+ ' / '
																				+ currentArray.length
																				+ (title.length ? ' &nbsp; '
																						+ title
																						: '')
																				+ '</span>';
																	}
																});

												// Find all YouTube videos
												var jQueryallVideos = jQuery("iframe[src^='http://www.youtube.com']"),
												// The element that is fluid width
												jQueryfluidEl = jQuery("div.accordionBox");
												// Figure out and save aspect ratio for each video
												jQueryallVideos
														.each(function() {
															jQuery(this)
																	.data(
																			'aspectRatio',
																			this.height
																					/ this.width)

																	// and remove the hard coded width/height
																	.removeAttr(
																			'height')
																	.removeAttr(
																			'width');
														});

												// When the window is resized
												// (You'll probably want to debounce this)
												jQuery(window)
														.resize(
																function() {

																	var newWidth = jQueryfluidEl
																			.width();

																	// Resize all videos according to their own aspect ratio
																	jQueryallVideos
																			.each(function() {

																				var jQueryel = jQuery(this);
																				jQueryel
																						.width(
																								newWidth)
																						.height(
																								newWidth
																										* jQueryel
																												.data('aspectRatio'));

																			});

																	// Kick off one resize to fix all videos on page load
																}).resize();

											});
						</script>

						<script type="text/javascript">
							var lifetime = 3600;
							var expireAt = Mage.Cookies.expires;
							if (lifetime > 0) {
								expireAt = new Date();
								expireAt.setTime(expireAt.getTime() + lifetime
										* 1000);
							}
							Mage.Cookies.set('external_no_cache', 1, expireAt);
						</script>
						<script type="text/javascript"
							src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.carouFredSel-6.1.0-packed.js"></script>
						<script type="text/javascript"
							src="${pageContext.request.contextPath}/resources/mytheme/js/jquery.touchSwipe.min.js"></script>
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
						<p class="copyText">&copy; Đề tài niên luận kỹ thuật phần mềm
							nhóm 7 - 2014</p>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div id="back-top" class="goTop">
			<a rel="tooltip" title="về đầu trang" data-placement="left"
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
