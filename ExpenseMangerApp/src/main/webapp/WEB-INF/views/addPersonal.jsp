<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

<title>Add Expense</title>
</head>
<style>
body {
	  background-image:    url(resources/images/signup2.jpg);
    background-repeat:   no-repeat;
    background-size: cover;
}
#phonenumber{
width: 300px;
height: 32px;
top:50;

left:48%;

}
</style>
<body>
	<form:form action="addExpense" method="post"
		modelAttribute="expense">
		<h1 id="signup" style="top:14%;left:41%;">Add Expense</h1>
		<table>
			<tr>
				<td id="name" >Date</td>
			</tr>
			<tr>


				<td><form:input id="nametext" path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" /> 
				<form:errors path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" /></td> 
			</tr>
			<tr>
				<td id="phonenumber" style=" width: 150px;
	height: 20px; left:37%;" >Pick Category</td>
			
				<td><form:select id="phonetext"  path="category">
						<form:options items="${category }" />
					</form:select></td>
			</tr>
			<form:errors path="category"></form:errors>
			<tr>
				<td id="password">Amount Spent</td></tr>
			<tr>
				<td><form:input  id="passwordtext"  path="expense" placeholder="expense" /> <form:errors
						path="expense" placeholder="expense" /></td>
			</tr>
			<tr>
				<td ><input id="name" style="height:40px; top:60%; left:37%; width:300px;" type="submit" value="Add Expense"></td>
			</tr>
		</table>
	</form:form>
	<!-- <tr><td><a href="personalExpenses.jsp">Back</a></td></tr>
<tr><td><a href="welcome.jsp">Logout</a></td></tr>
<tr><td><a href="expenses.jsp">Home</a></td></tr>
 -->

	<form:form  action="logout">
		<input id="back"  type="submit" value="Logout" />
	</form:form>
	<form:form action="expenses">
		<input  id="back" style="right:6.6%;" type="submit" value="Home" />
	</form:form>
	<form:form action="personalExpenses">
		<input  id="name" style="height:40px; top:67%; left:37%; width:300px;" type="submit" value="Back" />
	</form:form>
	<div id="bar"></div>
	<div id="border"></div>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Expense</title>
</head>
<body>
	<form:form action="addExpense" method="post"
		modelAttribute="expense">
		<table>
			<tr>
				<td>Date</td>
			</tr>
			<tr>


				<td><form:input path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" /> 
				<form:errors path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" /></td> 
			</tr>
			<tr>
				<td>Pick Category
			<tr>
				<td><form:select path="category">
						<form:options items="${category }" />
					</form:select></td>
			</tr>
			<form:errors path="category"></form:errors>
			<tr>
				<td>Amount Spent
			<tr>
				<td><form:input path="expense" placeholder="expense" /> <form:errors
						path="expense" placeholder="expense" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add Expense"></td>
			</tr>
		</table>
	</form:form>
	<!-- <tr><td><a href="personalExpenses.jsp">Back</a></td></tr>
<tr><td><a href="welcome.jsp">Logout</a></td></tr>
<tr><td><a href="expenses.jsp">Home</a></td></tr>
 -->
	<form:form action="expenses">
		<input type="submit" value="Home" />
	</form:form>
	<form:form action="logout">
		<input type="submit" value="Logout" />
	</form:form>
	<form:form action="expenses">
		<input type="submit" value="Home" />
	</form:form>
	<form:form action="personalExpenses">
		<input type="submit" value="back" />
	</form:form>
</body>
</html> --%>