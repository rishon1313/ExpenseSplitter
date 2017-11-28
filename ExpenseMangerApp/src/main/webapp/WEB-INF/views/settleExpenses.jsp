<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Settle Expense</title>
</head>
<style>
body {
	  background-image:    url(resources/images/signup2.jpg);
    background-repeat:   no-repeat;
    background-size: cover;
}

</style>
<body>
<%-- <form:form>
		<h1 id="signup" style="top:14%;left:41%;">Settle Expenses</h1>
		<table>
		<form:input id="receiverText" path=""></form:input>
		<form:errors path="" placeholder=""/>
		<form:input id="senderText" path=""></form:input>
		<form:errors path="" placeholder=""/>
		<form:input id="amountText" path=""></form:input>
		<form:errors path="" placeholder=""/>
		
		</table>
		<input id="name" style="height:40px; top:60%; left:37%; width:300px;" type="submit" value="Settle"/>
</form:form> --%>
<form action="settleDues">
	<h1 id="signup" style="top:14%;left:41%;">Settle Expenses</h1>
		<table>
		<tr><td>Pay to</td>
		<td><input id="receiverText" name="receiverText" required/></td></tr>
		
			<!-- <tr><td>Pay to</td><td><input id="senderText"  /></td></tr> -->
		
			<tr><td>Amount</td><td><input id="amountText" name="amountText" required/></td></tr>
			<tr><td><input id="name" style="height:40px; top:60%; left:37%; width:300px;" type="submit" value="Settle"/></td></tr>
		</table>
</form>
<form:form  action="logout">
		<input id="back"  type="submit" value="Logout" />
	</form:form>
	<form:form action="homeGroup">
		<input  id="back" style="right:6.6%;" type="submit" value="Home" />
	</form:form>
	<form:form action="homeGroup">
		<input  id="name" style="height:40px; top:67%; left:37%; width:300px;" type="submit" value="Back" />
	</form:form>
	<div id="bar"></div>
	<div id="border"></div>
</body>
</html>