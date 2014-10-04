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
                        <a  href="${pageContext.request.contextPath}/quanlysanpham.html"><i class="glyphicon glyphicon-phone fa-3x"></i>Quản lý sản phẩm</a>
                    </li>
                    <li>
                        <a   href="${pageContext.request.contextPath}/quanlynguoidung.html"><i class="glyphicon glyphicon-user fa-3x"></i> Quản lý người dùng</a>
                    </li>
						   <li  >
                        <a   href="${pageContext.request.contextPath}/quanlythongbao.html"><i class="fa fa-bell-o fa-3x"></i> Quản lý thông báo</a>
                    </li>
                    <li>
                        <a class="active-menu" href="${pageContext.request.contextPath}/quanlynhasanxuat.html"><i class="glyphicon glyphicon-home fa-3x"></i> Quản lý nhà sản xuất</a>
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
				               <div class="col-md-12">
								<!-- Advanced Tables -->
								<div class="panel panel-default">
									<div class="panel-heading">Bảng liệt kê các phân hệ điện thoại trong hệ thống</div>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table table-striped table-bordered table-hover"
												id="dataTables-example">
												<thead>
													<tr>
														<th>Mã phân hệ</th>
														<th>Tên phân hệ</th>
														<th>Ghi chú</th>
														<th>Thao tác</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${phanHeDts}" var="list">
														<tr class="odd gradeX">
															<td><c:out value="${list.maPhanHe}"></c:out></td>
															<td><c:out value="${list.tenPhanHe}"></c:out></td>
															<td><c:out value="${list.ghiChuPh}"></c:out></td>
															<td class="center">
				                                                <a class="glyphicon glyphicon-pencil" href="<c:url value="/edit_phanHe/${list.maPhanHe}"/>"></a>
				                                                <a class="glyphicon glyphicon-remove-sign" href="<c:url value="/delete_phanHe/${list.maPhanHe}"/>"></a>
				                                            </td>
														</tr>
														</c:forEach>
												</tbody>
											</table>
										</div>
			
									</div>
								</div>
								<!--End Advanced Tables -->
								<p><a href="${pageContext.request.contextPath}/themphanhe.html" class="btn btn-primary btn-lg" role="button">Thêm phân hệ</a></p>
							</div>
							
					</div><!-- hết phần hiển thị nội dung -->
                                                               
                                      
            </div>
                                
                      
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
