<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang Quản Trị</title>
</head>
<body>
${filename }<br>
${maDt }
<h1>Upload thành công</h1>
<img src="${pageContext.request.contextPath}/resources/upload/${filename}"/><br>
<a href="${pageContext.request.contextPath}/update_hinhAnhDienThoai/${maDt}" class="btn btn-primary btn-lg" role="button">Quay về trang quản lý hình ảnh</a><br>
</body>
</html>