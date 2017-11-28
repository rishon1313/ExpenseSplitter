<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<a>Show all the groups in which the user is a member.</a>
	<br>

	
	
	
	
	<form:form action="groupExpenseAdd" method="post" modelAttribute="groupExpenses">
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
				<td><input type="radio" name="gr" value="${group.groupId }"></td>
				<td>${group.groupId }</td>
				<td>${group.groupName }</td>
				<td>${group.numMembers }</td>
			</tr>
			</c:forEach>
		</table>
		
		<form:input path="expense" placeholder="Expense" />
				 <form:errors path="expense" placeholder="Expense" />
				 <form:input path="category" placeholder="category" />
				 <form:errors path="category" placeholder="category" />
				 <form:input path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" /> 
				<form:errors path="date" placeholder="date" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" /> 
				
		<input type="submit" value="Select Group">
	</div>
	
	</form:form>
		<form:form action="addGExpense">
		<input type="submit" value="Add Expense" />
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
	<form:form action="groupExpensesGroup">
		<input type="submit" value="Group Home" />
		<br>
	</form:form>
	<form:form action="groupHome">
		<input type="submit" value="Select any group you want" />
		<br>
	</form:form>

</body>
</body>
</html>