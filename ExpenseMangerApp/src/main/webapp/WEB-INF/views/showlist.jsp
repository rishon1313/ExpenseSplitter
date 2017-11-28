<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.myapp.model.Transaction"%>
    
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
body{
color: white;
font-size: 20px;
}
</style>
<body>
Sent Transaction history <br>
<table>
  <tr>
  <th>transaction ID</th>
    <th>sent to</th>
    <th>amount</th>
    <th>Date</th>
  </tr>
  
 <c:forEach var="t" items="${sentlist}" >
  <tr>
    <td>${t.transId }</td>
    <td>${t.receiver }</td>
    <td>${t.amount }</td>
    <td>${t.localDate }</td>
  </tr>
  
  </c:forEach>
</table>


</body>
</html>