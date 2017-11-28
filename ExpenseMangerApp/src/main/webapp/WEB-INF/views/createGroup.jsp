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
#nametext{
top:30%;
}</style>
<body>

	<form:form action="groupExpensesGroup" method="post" commandName="group">
		<h1 id="signup" style="top:14%;left:38.5%;">Add Group Details</h1>
		<label id="name" style="top:25%;" >Enter Group Name</label>
		<form:input id="nametext" path="groupName" placeholder="groupName" />
		<form:errors path="groupName" placeholder="groupName" />
		<input id="name" style="height:40px; top:40%; left:41%; width:200px;" type="submit" value="Add Group" />
	</form:form>
	<br>
	<form:form action="logout">
		<input  id="back" style="z-index:10;background-color:#556B2F; opacity:0.8;	border:0px ;" type="submit" value="Logout" />
		<br>
	</form:form>

	<form:form action="expenses">
		<input id="back" style="right:6.6%;" type="submit" value="Home" />
		<br>
	</form:form>
	<form:form action="groupExpenses">
		<input id="back" style="right:13.5%;" type="submit" value="Back" />
		<br>
	</form:form>
	<div id="bar"></div>
	<div id="border" style="height:300px;"></div>
</body>
</html>