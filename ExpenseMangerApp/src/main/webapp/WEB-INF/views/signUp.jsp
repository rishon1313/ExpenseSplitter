<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
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

}
</style>

<body>
	<form:form method="post" action="login" commandName="user">
		<table>
			<tr>
				<td id="signup">Sign Up</td>
			</tr>
			<tr>
						<td id="name"> Name</td>
			
				<td><form:input id="nametext" path="name" placeholder="Name" /></td>
			</tr>
			<tr>
				<td><form:errors path="name" placeholder="Name" /></td>
			</tr>
			<tr>
									<td id="phonenumber"> Mobile No.</td>
			
				<td><form:input id="phonetext" path="mobileNo" placeholder="MobileNo" /></td>
			</tr>
			<tr>
				<td><form:errors path="mobileNo" placeholder="MobileNo" /></td>
			</tr>
			<tr>
			      				<td id="password">Password</td>
			      
				<td><form:password path="password" id="passwordtext" placeholder="Password" /></td>
			</tr>
			<tr>
				<td><form:errors path="password" placeholder="Password" /></td>
			</tr>
			<tr>
			     				<td id=panno>PAN No.</td>
			     
				<td><form:input path="pan" id="pantext" placeholder="PAN" /></td>
			</tr>
			<tr>
				<td><form:errors path="pan" placeholder="PAN" /></td>
			</tr>
			<tr>
				<td><input id="submit" type="submit" value="Sign Up"></td>
			</tr>
		</table>
	</form:form>
	<div id="border"></div>
	<div id="bar"></div>
	<form:form method="post" action="logout">
		<input id="back" type="submit" value="Login" />
	</form:form>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
#signup {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 15%;
	left: 43%;
	font-size: 200%;
	color: black;
	white-space: nowrap;
}

#name {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 22%;
	left: 37%;
	font-size: 200%;
	color: black;
	white-space: nowrap;
}

#phonenumber {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 34%;
	left: 37%;
	font-size: 200%;
	color: black;
	white-space: nowrap;
}

#nametext {
	position: absolute;
	width: 300px;
	height: 32px;
	z-index: 2;
	top: 28%;
	left: 37%;
	font-size: 150%;
	color: black;
	white-space: nowrap;
	border-radius: 5px;
}

#phonetext {
	position: absolute;
	width: 300px;
	height: 32px;
	z-index: 2;
	top: 40%;
	left: 37%;
	font-size: 150%;
	color: black;
	white-space: nowrap;
	border-radius: 5px;
}

#password {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 46%;
	left: 37%;
	font-size: 200%;
	color: black;
	white-space: nowrap;
}

#passwordtext {
	position: absolute;
	width: 300px;
	height: 32px;
	z-index: 2;
	top: 52%;
	left: 37%;
	font-size: 150%;
	color: black;
	white-space: nowrap;
	border-radius: 5px;
}

#panno {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 58%;
	left: 37%;
	font-size: 200%;
	color: black;
	white-space: nowrap;
}

#pantext {
	position: absolute;
	width: 300px;
	height: 32px;
	z-index: 2;
	top: 64%;
	left: 37%;
	font-size: 150%;
	color: black;
	white-space: nowrap;
	border-radius: 5px;
}

#submit {
	background: #0066A2;
	color: white;
	border-color: #0066A2;
	height: 50px;
	width: 100px;
	position: absolute;
	top: 74%;
	right: 50%;
	font: bold 15px arial, sans-serif;
	z-index: 10;
}

#border {
	border: 2px solid darkgrey;
	border-radius: 5px;
	position: absolute;
	top: 10%;
	right: 40%;
	height: 580px;
	width: 350px;
	background-color: opacity: 1;
}
</style>
<body>
	<form:form method="post" action="login" commandName="user">
		<table>
			<tr>
				<td id="signup">Sign Up</td>
			</tr>
			<tr>
				<td><form:input path="name" placeholder="Name" /></td>
			</tr>
			<tr>
				<td><form:errors path="name" placeholder="Name" /></td>
			</tr>
			<tr>
				<td><form:input path="mobileNo" placeholder="mobileNo" /></td>
			</tr>
			<tr>
				<td><form:errors path="mobileNo" placeholder="mobileNo" /></td>
			</tr>
			<tr>
				<td><form:input path="password" placeholder="password" /></td>
			</tr>
			<tr>
				<td><form:errors path="password" placeholder="password" /></td>
			</tr>
			<tr>
				<td><form:input path="pan" placeholder="pan" /></td>
			</tr>
			<tr>
				<td><form:errors path="pan" placeholder="pan" /></td>
			</tr>
			<tr>
				<td><input id="submit" type="submit" value="Sign Up"></td>
			</tr>
		</table>
	</form:form>
	<div id="border"></div>
	<form:form method="post" action="welcome">
		<input type="submit" value="Back" />
	</form:form>
</body>
</html> --%>