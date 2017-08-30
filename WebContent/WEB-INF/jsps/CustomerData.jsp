<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to Customer Data Page</h1>
<table border = "2">
<tr>
<th>ID</th><th>Name</th><th>Type</th><th>Email</th>
</tr>
<c:forEach items="${listObj}" var="cust">
<tr>
<td><c:out value="${cust.custId}"/></td>
<td><c:out value="${cust.custName}"/></td>
<td><c:out value="${cust.custType}"/></td>
<td><c:out value="${cust.custEmail}"/></td>

<td>
<c:choose>
<c:when test="${cust.custType eq 'Seller'}">
<a href ="viewItems?custId=${cust.custId}">view Items</a>
</c:when>
<c:otherwise>
<a href ="viewTxns?custId=${cust.custId}">View Transactions</a>
</c:otherwise>
</c:choose>
</td>

<td><a href='deleteCust?CustId=${cust.custId}'>
<img src="../images/delete.jpg" style="width:40px;height:40px;"/>
</a></td>
<td><a href='editCust?CustId=${cust.custId}'>
<img src="../images/edit.jpg" style="width:40px;height:40px;"/>
</a></td>
</tr>

</c:forEach>
</table>

</body>
<a href="customerExcelExport">Excel Export</a>
	<a href="customerPdfExport">PDF Export</a>
</html>