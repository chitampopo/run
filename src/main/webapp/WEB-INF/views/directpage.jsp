<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title>Trang Quản Trị</title>
    </head>
    <body>
    	<h1><a href="${pageContext.request.contextPath}/dangnhap">Đăng nhập</a></h1><br>
    	<h1><a href="${pageContext.request.contextPath}/trangupload">Upload</a></h1><br>
    	<h1><a href="${pageContext.request.contextPath}/viewupload">Danh sách hình ảnh</a></h1><br>
    	${soluongdongia }<br>
    	<c:forEach items="${dts}" var="dt">
			<c:out value="${dt}"></c:out><br>
			<c:out value="${dt.cauHinh}"></c:out><br>
			<c:forEach var="donGia" items="${dt.donGias}" end="0">
			     <c:out value="${donGia }"/><br>
			</c:forEach>
			<br>
		</c:forEach>
    </body>
</html>
