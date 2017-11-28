<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
#phonenumber{
width: 300px;
height: 32px;
top:50;

left:48%;

}
</style>
<body>

<form:form action="groupExpenseAdd" method="post" commandName="groupExpenses">
<h1 id="signup" style="top:14%;left:41%;">Add an Expense</h1><br>
 <label id="name">Enter Expense</label>
<form:input id="nametext" path="expense" placeholder="Expense" />
				 <form:errors path="expense" placeholder="Expense" />
				 <label id="phonenumber" style=" width: 150px;
	height: 20px; left:37%;">Enter category</label>
				<form:select id="phonetext"  path="category">
						<form:options items="${category }" />
					</form:select>
                 <label id="password">Enter date</label>
				 <form:input id="passwordtext" path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$"/>
				 <form:errors path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" />
				<input id="name" style="height:40px; top:60%; left:37%; width:300px;" type="submit" value="Add Expense"/>


</form:form>
<form:form action="logout">
		<input id="back" type="submit" value="Logout" />
		<br>
	</form:form>

	<form:form action="expenses">
		<input id="back" style="right:6.6%;" type="submit" value="Home" />
		<br>
	</form:form>
	<form:form action="groupHome">
		<input id="back" style="right:13.5%;" type="submit" value="Group's Home" />
		<br>
	</form:form>
	<div id="bar"></div>
	<div id="border"></div>
</body>
</html>