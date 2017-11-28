<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
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
color: white;
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
h2{
color: white;
}

</style>
<body>
<h1>PayApp</h1>
<a class="log" href="backfrompay">Exit PayApp</a><br>
<a class="pro" href="payhome1">Home page</a><br>
<h2>payment done</h2><br>

your transaction id is : ${transId }

</body>
</html>