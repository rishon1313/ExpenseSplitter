<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	
}a{

font-size:30px;
   top:20px;
   right:0;
   color:black;
   font-weight:bold;
}
</style>
<body>

	<table class="exptable">
			<tr>
				<th>Expense</th>
				<th>Category</th>
				<th>User</th>
				<th>Date</th>
			</tr>
			<c:forEach var="gexpense" items="${groupExpensesList}">
				<tr>
					<td>${gexpense.expense }</td>
					<td>${gexpense.category }</td>
					<td>${gexpense.user.name }</td>
					<td>${gexpense.date }</td>
				</tr>
			</c:forEach>
		</table>
<table class="exptable">
			<tr>
				<th>UserId</th>
				<th>User Group Wallet </th>
			</tr>
			<c:forEach var="userdue" items="${userDues}">
				<tr>
					<td>${userdue.user.mobileNo }</td>
					<td>${userdue.userDues }</td>
				</tr>
			</c:forEach>
		</table>
	<form:form action="settleExpense">
		<input  id="name" style="height:50px; top:68%; left:30%; width:500px;" type="submit" value="Settle Expenses" />
		<br>
	</form:form>
	
	<form:form action="addGExpense">
		<input  id="name" style="height:50px; top:75%; left:30%; width:500px;" type="submit" value="Add Expense" />
		<br>
	</form:form>
	

	<form:form action="addGroupMember">
		<input  id="name" style="height:50px; top:82%; left:30%; width:500px;" type="submit" value="Add Member" />
		<br>
	</form:form>

	<form:form action="logout">
		<input  id="back" style="z-index:10;background-color:#556B2F; opacity:0.8;	border:0px ;" type="submit" value="Logout" />
		<br>
	</form:form>

	<form:form action="expenses">
		<input id="back" style="right:6.6%;"  type="submit" value="Home" />
		<br>
	</form:form>
<div id="bar"></div>

	<form:form action="viewGroups">
		<input id="back" style="right:13.5%;" type="submit" value="Back" />
		<br>
	</form:form>
	<a class="pay" href="loginpay">PayApp</a>
</body>
</html>