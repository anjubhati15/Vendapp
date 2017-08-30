<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="Master.jsp" %>
	<form action="insertLoc" method="post">
		<pre>
ID:<input type="text" name="locId" />
Name:<input type="text" name="locName" />
Type:<input type="radio" name="locType" value="urban" />Urban
<input type="radio" name="locType" value="rural" />Rural
<input type="submit" value="insert" />

</pre>
	</form>
	${msg}
	<a href="showLocs">view All</a>
</body>
</html>