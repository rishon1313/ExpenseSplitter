<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
}
</style>
<body>
	<%-- <br>
	<form:form action="addGroupMember" commandName="group">
	<div >
		<table class="exptable" style="z-index:10;">
		
			<tr>
				<th>Select</th>
				<th>Group ID</th>
				<th>Group Name</th>
				<th>Members</th>
			</tr>
		<c:forEach var="group" items="${groups }">
			<tr>
				<td><input type="radio" name="gr" value="${group.groupId}" /> </td>
				<td>${group.groupId }</td>
				<td>${group.groupName }</td>
				<td>${group.numMembers }</td>
			</tr>
			</c:forEach>
		</table>
		<input  id="name" style="height:50px; top:75%; left:30%; width:500px;" type="submit" value="Add Member">
	</div>
	
	</form:form>
		<form:form action="addGExpense">
		<input id="name" style="height:50px; top:82%; left:30%; width:500px;"  type="submit" value="Add Expense" />
		<br>
	</form:form>
	<form:form action="logout">
		<input id="back" style="z-index:10;background-color:#556B2F; opacity:0.8;	border:0px ;" type="submit" value="Logout" />
		<br>
	</form:form>
	<form:form action="expenses">
		<input id="back" style="right:6.6%;"  type="submit" value="Home" />
		<br>
	</form:form>
	<form:form action="groupExpensesGroup">
		<input id="back" style="right:13.5%;" type="submit" value="Group Home" />
		<br>
	</form:form>
	<form:form action="groupHome">
		<input id="name" style="height:50px; top:89%; left:30%; width:500px;"  type="submit" value="Group Details" />
		<br>
	</form:form>
<div id="bar"></div> --%>

<a>Show all the groups in which the user is a member.</a>
	<br>	
	<form:form action="groupHome">
		<div class="exptable">
		<table>
			<tr>
				<th>Select</th>
				<th>Group ID</th>
				<th>Group Name</th>
				<th>Members</th>
			</tr>
		<c:forEach var="group" items="${groups }">
			<tr>
				<td><input type="radio" name="gr" value="${group.groupId}" /> </td>
				<td>${group.groupId }</td>
				<td>${group.groupName }</td>
				<td>${group.numMembers }</td>
			</tr>
			</c:forEach>
		</table>
		<input  id="name" style="height:50px; top:75%; left:30%; width:500px;" type="submit" value="groupHome">
	</div>
		<br>
	</form:form>
		
	<form:form action="logout">
		<input id="back" style="z-index:10;background-color:#556B2F; opacity:0.8;	border:0px ;" type="submit" value="Logout" />
		<br>
	</form:form>
	<form:form action="expenses">
		<input id="back" style="right:6.6%;"  type="submit" value="Home" />
		<br>
	</form:form>
	
	
<div id="bar"></div>


</body>
</html>