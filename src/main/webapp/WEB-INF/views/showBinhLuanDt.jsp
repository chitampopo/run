<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${lsItemBinhLuan}" var="lsItemBinhLuan">
		
		<c:out value="${lsItemBinhLuan.binhLuan.taiKhoan.tenTk}"></c:out>: 
		<c:out value="${lsItemBinhLuan.binhLuan.noiDungBl}"></c:out><br>
		<c:forEach items="${lsItemBinhLuan.listBlCon}" var="listBlCon">
			-> <c:out value="${listBlCon.taiKhoan.tenTk}"></c:out>:
			<c:out value="${listBlCon.noiDungBl}"></c:out><br>
		</c:forEach>
	</c:forEach>
</body>
</html>