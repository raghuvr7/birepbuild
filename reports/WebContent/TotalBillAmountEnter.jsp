<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp"></jsp:include>
  <link rel="stylesheet" type="text/css" href="styles.css">
  <link rel="stylesheet" href="theme.css">
<meta charset="ISO-8859-1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class = "layout">
<form action="TotalBillAmount">
<p class="vzh2">Total Bill Amount</p><br>
Year :
<select name="Year" class="select-style">
<option value="twenty eleven">2011</option>
<option value="twenty twelve">2012</option>
<option value="twenty thirteen">2013</option>
<option value="twenty fourteen">2014</option>
<option value="twenty fifteen">2015</option>
</select>
<br><br>
<input type="submit" class="vzbtnsmall" value="submit">
</form>
</div>
<jsp:include page="Header2.jsp"></jsp:include>
</body>
</html>