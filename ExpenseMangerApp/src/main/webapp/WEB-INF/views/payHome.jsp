<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
 
<html>
<head>
	<title>Home</title>
</head>
 <script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>
  <script>
$(document).ready(function(){
	$("#sent").click(function(){
		$.ajax({
			url:"sent",
			data: ($("input").serialize()),
			success: function(data){
				$("#viewtable").html(data);
			}
		})
	})
		$("#received").click(function(){
		$.ajax({
			url:"received",
			data: ($("input").serialize()),
			success: function(data){
				$("#viewtable").html(data);
			}
		})
	})
})
</script> 
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
p{
color:white;
font-size:30px;
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

input[type=submit]:hover {
    background-color: #45a049;
    height:10px;
    width:100%;
    text-align: center;
     padding: 20px 20px ;
     padding-top: 10px;
}
input[type=text], select {
  
    padding: 4px 15px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
  
    padding: 4px 15px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
div{
  color:white;
   font-weight:bold;
}
</style>

<body>

<h1>
	Welcome to PayApp  
</h1>
<a class="pro" href="backfrompay">Exit PayApp</a><br>
<a href="paytosomeone">Pay someone</a><br><br>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button id="sent" name="sent">view sent history</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button id="received" name="received">view received history</button><br><br>
<div id="viewtable"></div>
</body>
</html>

</body>
</html>