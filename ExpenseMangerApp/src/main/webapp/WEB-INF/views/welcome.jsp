<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#welcome {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 20%;
	left: 20%;
	font-size: 500%;
	color: red;
}

#to {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 33%;
	left: 27%;
	font-size: 500%;
	color: red;
}

#expense {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 43%;
	left: 21%;
	font-size: 500%;
	color: red;
}

#manager {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 55%;
	left: 21%;
	font-size: 500%;
	color: red;
}

#sign {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 20%;
	left: 80%;
	font-size: 200%;
	color: threedlightshadow;
}

#phone {
	position: absolute;
	width: 160px;
	height: 20px;
	z-index: 2;
	top: 27%;
	white-space: nowrap;
	left: 76%;
	font-size: 190%;
	color: threedlightshadow;
}

#password {
	position: absolute;
	width: 160px;
	height: 20px;
	z-index: 2;
	top: 39%;
	white-space: nowrap;
	left: 76%;
	font-size: 190%;
	color: threedlightshadow;
}

#phonetext {
	position: absolute;
	width: 230px;
	height: 30px;
	z-index: 2;
	top: 33%;
	white-space: nowrap;
	left: 76%;
	font-size: 100%;
	color: threedlightshadow;
	border-radius: 7%;
}

#passwordtext {
	position: absolute;
	width: 230px;
	height: 30px;
	z-index: 2;
	top: 45%;
	white-space: nowrap;
	left: 76%;
	font-size: 100%;
	color: threedlightshadow;
	border-radius: 7%;
}

#signup {
	position: absolute;
	width: 230px;
	height: 30px;
	z-index: 2;
	top: 62%;
	white-space: nowrap;
	left: 76%;
	font-size: 120%;
	color: threedlightshadow;
}

#button {
	background: #0066A2;
	color: white;
	border-color: #0066A2;
	height: 50px;
	width: 100px;
	position: absolute;
	top: 53%;
	right: 13%;
	font: bold 15px arial, sans-serif;
	z-index: 10;
}

#border {
	border: 2px solid darkgrey;
	border-radius: 5px;
	position: absolute;
	top: 15%;
	right: 5%;
	height: 390px;
	width: 300px;
	background-color: opacity: 1;
}
</style>
<body>
	<table>
		<tr>
			<td id="welcome">Welcome</td>
		</tr>
		<tr>
			<td id="to">To</td>
		</tr>
		<tr>
			<td id="expense">Expense</td>
		</tr>
		<tr>
			<td id="manager">Manager</td>
		</tr>
	</table>
	<form:form action="expenses" method="post" commandName="user">
		<table>
			<tr>
				<td id="sign">Sign In</td>
			</tr>
			<tr>

				<td id="phone">Phone Number</td>
			</tr>
			<tr>
				<td><form:input path="mobileNo" placeholder="mobile No" /> <form:errors
						path="mobileNo" placeholder="mobile No" /></td>
			</tr>
			<tr>
				<td id="password">Password</td>
			</tr>
			<tr>
				<td><form:input path="password" placeholder="password" /> <form:errors
						path="password" placeholder="password" /></td>
			</tr>
			<tr>
				<td><input id="button" type="submit" value="Sign in" /></td>
			</tr>
		</table>
	</form:form>
	<form:form action="signUp" method="post">
		<label>Don't have an account?</label>
		<input type="submit" value="Sign Up">
		<br>
	</form:form>
	<div id="border"></div>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#welcome {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 20%;
	left: 7%;
	font-size: 500%;
	color: 	#CD5C5C;
}

#to {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 33%;
	left: 12%;
	font-size: 500%;
	color: 	#CD5C5C;
}

#expense {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 43%;
	left: 8%;
	font-size: 500%;
	color: 	#CD5C5C;
}

#manager {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 55%;
	left: 8%;
	font-size: 500%;
	color: 	#CD5C5C;
}

#sign {
	position: absolute;
	width: 150px;
	height: 20px;
	z-index: 2;
	top: 20%;
	left: 80%;
	font-size: 200%;
	color: 	#CD5C5C;
}

#phone {
	position: absolute;
	width: 160px;
	height: 20px;
	z-index: 2;
	top: 27%;
	white-space: nowrap;
	left: 76%;
	font-size: 170%;
	color: 	#CD5C5C;
}

#password {
	position: absolute;
	width: 160px;
	height: 20px;
	z-index: 2;
	top: 39%;
	white-space: nowrap;
	left: 76%;
	font-size: 170%;
	color: 	#CD5C5C;
}

#phonetext {
	position: absolute;
	width: 230px;
	height: 30px;
	z-index: 2;
	top: 33%;
	white-space: nowrap;
	left: 76%;
	font-size: 100%;
	color: threedlightshadow;
	border-radius: 7%;
}

#passwordtext {
	position: absolute;
	width: 230px;
	height: 30px;
	z-index: 2;
	top: 45%;
	white-space: nowrap;
	left: 76%;
	font-size: 100%;
	color: threedlightshadow;
	border-radius: 7%;
}

#signup {
	position: absolute;
	width: 230px;
	height: 30px;
	z-index: 2;
	top: 62%;
	white-space: nowrap;
	left: 76%;
	font-size: 120%;
	color: 	#CD5C5C;
}

#signinbutton {
	background: 		#6B8E23;
	color: white;
	border-color: #0066A2;
	height: 50px;
	width: 100px;
	position: absolute;
	top: 53%;
	right: 13%;
	font: bold 15px arial, sans-serif;
	z-index: 10;
}
#signupbutton{
	border-color: #0066A2;
	background: 		#6B8E23;

	color: white;
	height: 30px;
	width: 61px;
	position: absolute;
	top: 61.5%;
	right: 7%;
	font:bold  13px arial, sans-serif;
	z-index: 10;
}
#border1 {
	border: 2px solid black;
	border-radius: 5px;
	position: absolute;
	top: 15%;
	right: 5%;
	height: 430px;
	width: 300px;
	background-color:	#556B2F;
	 opacity: 0.4;
}
#border2 {
	position: absolute;
	top: 0%;
	right: 67%;
	height: 900px;
	width: 800px;
	background-color:	#556B2F;
	 opacity: 0.4;
}
 body {
	  background-image:    url(resources/images/money.jpg);
    background-repeat:   no-repeat;
    background-size: 900px 400px;
      background-position: 88% -110%;
} 
</style>
<body>
	<table>
		<tr>
			<td id="welcome">Welcome</td>
		</tr>
		<tr>
			<td id="to">To</td>
		</tr>
		<tr>
			<td id="expense">Expense</td>
		</tr>
		<tr>
			<td id="manager">Manager</td>
		</tr>
	</table>
	<form:form action="expenses" method="post" commandName="user">
		<table>
			<tr>
				<td id="sign">Sign In</td>
			</tr>
			<tr>

				<td id="phone">Phone Number</td>
			</tr>
			<tr>
				<td><form:input id="phonetext" path="mobileNo" placeholder="mobile No" /> <form:errors
						path="mobileNo" placeholder="mobile No" /></td>
			</tr>
			<tr>
				<td id="password">Password</td>
			</tr>
			<tr>
				<td><form:password id="passwordtext" path="password" placeholder="password" />
				 <form:errors
						path="password" placeholder="password" /></td>
			</tr>
			<tr>
				<td><input id="signinbutton" type="submit" value="Sign in" /></td>
			</tr>
		</table>
	</form:form>
	<form:form action="signUp" method="post">
		<div id="signup">Don't have an account?</div>
		<input  id="signupbutton" type="submit" value="Sign Up">
		<br>
	</form:form>
	<div id="border1"></div>
		<div id="border2"></div>
	
</body>
</html>