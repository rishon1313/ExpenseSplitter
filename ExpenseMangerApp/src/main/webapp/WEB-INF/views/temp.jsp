<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style type="text/css">
body{
background-image:url("resources/images/pay.jpg");
background-size:cover;
}

h1{
color:white;
font-style:italic;
font-size:70px
}
a{
color:white;
   font-weight:bold;
   font-size:20px;
}
.log{
position:absolute;
font-size:20px;
   top:0;
   right:0;
   color:white;
   font-weight:bold;
}
.pro{
position:absolute;
font-size:20px;
   top:20px;
   right:0;
   color:white;
   font-weight:bold;
  
}
#xyz {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    height:150px;
    width:300px;
    margin-left:1000px;
    margin-top: 60px;
}

input[type=submit]:hover {
    background-color: #45a049;
    height:10px;
    width:100%;
    text-align: center;
     padding: 20px 20px ;
     padding-top: 10px;
}
input[type=submit] {
   
    background-color: #4CAF50;
    color: white;
    padding: 20px 20px ;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    height:10px;
    width:100%;
    text-align: center;
    padding-top: 10px;
}
h2{
color: white;
}
h1{
color:white;
font-style:italic;
font-size:70px
}

</style>
<body>
<a class="pro" href="payhome1">Home page</a><br>

<form:form action="payment" commandName="transaction" >

<table id="xyz">
<tr><td>sender:</td><td> <form:input path="sender" value="${number}" readonly="true"/></td></tr><br><br>
<tr><td>receiver:</td><td><form:input path="receiver"/><form:errors path="receiver"/></td></tr><br><br>
<tr><td>amount:</td><td><form:input path="amount"/><form:errors path="amount"/></td></tr><br><br>
<tr><td colspan="2"><input type="submit" value="make payment"></td></tr>
</table>
</form:form>

</body>
</html> 