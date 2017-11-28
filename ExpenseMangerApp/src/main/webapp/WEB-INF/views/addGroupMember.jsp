<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<style>
body {
	  background-image:    url(resources/images/signup2.jpg);
    background-repeat:   no-repeat;
    background-size: cover;
}
#nametext{
top:30%;
}
</style>
<body>

<form:form action="addMember" method="post" commandName="user">
<h1 id="signup" style="top:14%;left:38.5%;">Add Member</h1>
<label id="name" style="top:25%;">Enter Mobile number</label>
<form:input id="nametext" path="mobileNo" placeholder="mobileNo" />
				 <form:errors path="mobileNo" placeholder="mobileNo" />
<!-- <input type="text" id="phone" required/><br> -->
<input id="name" style="height:40px; top:40%; left:41%; width:200px;" type="submit" value="Add Member"/> 
</form:form><br>
<form:form action="logout">
		<input id="back" style="z-index:10;background-color:#556B2F; opacity:0.8;	border:0px ;" type="submit" value="Logout" />
		<br>
	</form:form>

	<form:form action="expenses">
		<input id="back" style="right:6.6%;" type="submit" value="Home" />
		<br>
	</form:form>
	<form:form action="groupHome">
		<input id="back" style="right:13.5%;" type="submit" value=" Group Home" />
		<br>
	</form:form>
	<div id="bar"></div>
	<div id="border"></div>
</body>
</html>