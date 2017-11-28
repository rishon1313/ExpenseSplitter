<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.myapp.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

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
	
}</style>
<body>
<a>Remove personal expenses.</a><br> 
<form:form action="personalExpensesremove" method="post" commandName="expense">
			<table class="exptable">
				<thead>
					<tr>
						<th> </th>
						<th>expense</th>
						<th>category</th>
						<th>date</th>
					</tr>
				</thead>
				<c:forEach var="asd" items="${expenseList}">
				<tr>
				<td>
				<form:radiobutton required="required" path="expenseId" value="${asd.expenseId}"  /></td>
			    <td>
			    ${asd.expense}
			    </td>
			    <td>${asd.category}</td>
				<td>
				${asd.date}</td></tr>
				</c:forEach>
				<form:errors path="Expense" />
				</table>
				
				
				<%--  <label>Choose One :</label>
				<form:radiobuttons path="Expense" items="${expenseList}" />
                                
				<td><form:errors path="Expense"  /></td>
		 --%>
				
<input id="name" style="height:50px; top:75%; left:30%; width:500px;" type="submit" value="Remove"/>
</form:form>
<form:form action="logout">
<input id="back"  type="submit" value="Logout"/>
</form:form>
<form:form action="expenses" >
<input id="back" style="right:6.6%;" type="submit" value="Home"/>
</form:form>
<!-- <a href="personalExpenses.jsp">Back</a><br>
<a href="welcome.jsp">Logout</a><br>
<a href="expenses.jsp">Home</a><br> -->
<div id="bar"></div>
</body>
</html>

<%-- <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.myapp.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a>Remove personal expenses.</a><br> 
<form:form action="personalExpensesremove" method="post" commandName="expense">
			
				
				 <label>Choose One :</label>
				<form:radiobuttons path="expenseId" items="${expenseList}" />
                                
				<td><form:errors path="expenseId"  /></td>
		
				
<input type="submit" value="Remove"/> <br>
</form:form>
<form:form action="logout">
<input type="submit" value="Logout"/>
</form:form>
<form:form action="expenses" >
<input type="submit" value="Home"/>
</form:form>
<!-- <a href="personalExpenses.jsp">Back</a><br>
<a href="welcome.jsp">Logout</a><br>
<a href="expenses.jsp">Home</a><br> -->
</body>
</html> --%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.myapp.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a>Remove personal expenses.</a><br> 
<form:form action="personalExpensesremove" method="post" commandName="expense">
			<table class="table table-striped">
				<thead>
					<tr>
						<th> </th>
						<th>expense</th>
						<th>category</th>
						<th>date</th>
					</tr>
				</thead>
				<c:forEach var="asd" items="${expenseList}">
				<tr>
				<td>
				<form:radiobutton  path="expenseId" value="${asd.expenseId}"  /></td>
			    <td>
			    ${asd.expense 	}
			    </td>
			    <td>${asd.category}</td>
				<td>
				${asd.date}</td></tr>
				</c:forEach>
				<form:errors path="expense" />
				</table>
				
				
				 <label>Choose One :</label>
				<form:radiobuttons path="Expense" items="${expenseList}" />
                                
				<td><form:errors path="Expense"  /></td>
		
				
<input type="submit" value="Remove"/> <br>
</form:form>
<form:form action="logout">
<input type="submit" value="Logout"/>
</form:form>
<form:form action="expenses" >
<input type="submit" value="Home"/>
</form:form>
<!-- <a href="personalExpenses.jsp">Back</a><br>
<a href="welcome.jsp">Logout</a><br>
<a href="expenses.jsp">Home</a><br> -->
</body>
</html>
 --%> 