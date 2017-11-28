<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/style.css">

</head>
<style>
body{
	  background-image:    url(resources/images/signup2.jpg);

}
#signup{
	
	font-size:300%;
	color:#556B2F;
	left:40%;

}

#nametext{
top: 28%;
	left: 30%;
	font-size: 150%;
}
#name{
width: 150px;
	height: 38px;
	z-index: 2;
	top: 28%;
	left: 53%;
	font-size: 150%
}

#submit{
color: white;
	border-color: #0066A2;
	height: 50px;
	width: 100px;
	top: 74%;
	right: 49%;
	font: bold 15px arial, sans-serif;}</style>
<body>

<div id="signup">Budget :${budget}<br>Group due :${groupDue}<br><br>
</div>


	<form:form action="addBudget" method="post" commandName="user">
		<form:input id="nametext" path="budget" placeholder="Add Budget"/>
		<input id="name" type="submit" value="Add Budget" />
	</form:form>
	
	<form:form action="personalExpenses">
		<input id="name" style="height:50px; top:37%; left:30%; width:500px;" type="submit" value="Personal Expenses" />
	</form:form>
	<form:form action="groupExpenses">
		<input id="name" style="height:50px; top:46%; left:30%; width:500px;"type="submit" value="Group Expenses" />
	</form:form>
	<form:form action="logout">
		<input id="back" style="z-index:10;background-color:#556B2F; opacity:0.8;	border:0px ;" type="submit" value="Logout" />
	</form:form>
	<div id="bar"></div>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Budget - </h1>${budget}

	<form:form action="addBudget" method="post" commandName="user">
		<form:input path="budget" placeholder="Add Budget"/>
		<input type="submit" value="Add Budget" />
	</form:form>
	<form:form action="personalExpenses">
		<input type="submit" value="Personal Expenses" />
	</form:form>
	<form:form action="groupExpenses">
		<input type="submit" value="Group Expenses" />
	</form:form>
	<form:form action="logout">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html> --%>