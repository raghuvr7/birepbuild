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
<title>Insert title here</title>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="nofollow" type="text/css"/> 
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script> 
<script> $(function() {
$("#datePick").datepicker({
onSelect: function() {
if (this.value === "") 
{
$("#dateText").hide();
}
else 
{
$("#dateText").fadeIn("slow");
}
}
});
});
</script> 
<script> $(function() {
$("#datePick1").datepicker({
onSelect: function() {
if (this.value === "") 
{
$("#dateText").hide();
}
else 
{
$("#dateText").fadeIn("slow");
}
}
});
});
</script>

</head>
<body>
<div class = "layout">
<div >
<form action="ServiceTickets">
<p class="vzh2">Service Tickets Generated </p><br>
From Date: <input type="text" class="vztext" id="datePick1" name="ddate">
To Date: <input type="text" class="vztext" id="datePick" name="edate">
<br>
<input type="submit" class="vzbtnsmall" value="submit">
</form> 
</div>
</div>
<jsp:include page="Header2.jsp"></jsp:include>
</body>
</html>