<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	  background-image:    url(resources/images/signup2.jpg);
    background-repeat:   no-repeat;
    background-size: cover;
}
#signup{
position: absolute;
	width: 150px;
	height: 20px;
	top: 15%;
	left: 31%;
	font-size: 400%;
	color: 	black;
}
a{

font-size:30px;
   top:20px;
   right:0;
   color:black;
   font-weight:bold;
}
#name{
width: 150px;
	height: 38px;
	z-index: 2;
	top: 28%;
	left: 53%;
	font-size: 150%
}</style>
<body>
<h1 id="signup">Group Expenses</h1>
	<form:form method="post" action="createGroup">
		<input id="name" style="height:50px; top:46%; left:30%; width:500px;"  type="submit" value="Create Group" />
		<br>
	</form:form>
	<form:form method="post" action="viewGroups">
		<input id="name" style="height:50px; top:37%; left:30%; width:500px;" type="submit" value="View Groups" />
		<br>
	</form:form>
	<form:form action="logout">
		<input id="back" type="submit" value="Logout" />
		<br>
	</form:form>

	<form:form action="expenses">
		<input id="back" style="right:6.6%;" type="submit" value="Home" />
		<br>
	
	</form:form>
		<a class="pay" href="loginpay">Pay someone</a>
	<div id="bar"></div>
</body>
</html><%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form method="post" action="createGroup">
		<input type="submit" value="Create Group" />
		<br>
	</form:form>
	<form:form method="post" action="viewGroups">
		<input type="submit" value="View Groups" />
		<br>
	</form:form>
	<form:form action="logout">
		<input type="submit" value="Logout" />
		<br>
	</form:form>

	<form:form action="expenses">
		<input type="submit" value="Home" />
		<br>
	</form:form>
</body>
</html> --%>