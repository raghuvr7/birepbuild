<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib   uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp"></jsp:include>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <link rel="stylesheet" href="theme.css">
<meta charset="ISO-8859-1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<title>Reports on Bills and payments</title>
</head>
<body>
<div class = "layout">
<table border=2 class="vztable">
<tbody>
<tr>
<th>Customer ID</th><th>Bill Amount</th><th>Payments</th>
</tr>
<c:forEach var="e" items="${bills}">
<tr>
<td><c:out value="${e.custId}"></c:out></td>
<td><c:out value="${e.countBill}"></c:out>
<td><c:out value="${e.countPayments}"></c:out>
</tr>
</c:forEach> 
</tbody>
</table>
</div>
<jsp:include page="Header2.jsp"></jsp:include>
</body>
</html>