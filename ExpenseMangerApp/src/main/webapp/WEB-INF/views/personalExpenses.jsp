<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="addPersonal">
		<input type="submit" value="Add Expense" />
	</form:form>
	<form:form action="removePersonal">
		<input type="submit" value="Remove Expense" />
	</form:form>
	<form:form action="expenses">
		<input type="submit" value="Home" />
	</form:form>
	<form:form action="logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

<title>Insert title here</title>
</head>
<style>
body {
	  background-image:    url(resources/images/signup2.jpg);
    background-repeat:   no-repeat;
    background-size: cover;
}
th {
	background-color: #4CAF50;
	color: white;
}
th, td {
	text-align: left;
	padding: 8px;
}
td{
		background-color: 	#90EE90;
	
}</style>

<body>
<table class="exptable" cellspacing="8" cellpadding="7">
<thead>
					<tr>
						<th>expenseId</th>
						<th>expense</th>
						<th>category</th>
						<th>date</th>
					</tr>
				</thead> 

	<c:forEach var="item" items="${expenseList}">	
		<tr>
			<td>${item.expenseId}</td>
			<td>${item.expense}</td>
			<td>${item.category}</td>
			<td>${item.date}</td>
		</tr>
	</c:forEach></table>
	
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<form:form action="addPersonal">
		<input id="name" style="height:50px; top:75%; left:30%; width:500px;"  type="submit" value="Add Expense" />
	</form:form>
	<form:form action="removePersonal">
		<input id="name" style="height:50px; top:82%; left:30%; width:500px;" type="submit" value="Remove Expense" />
	</form:form>
	<form:form action="expenses">
		<input id="back" style="right:6.6%;" type="submit" value="Home" />
	</form:form>
	<form:form action="logout">
		<input id="back" type="submit" value="Logout" />
	</form:form>
	<div id="bar"></div>
</body>
</html>