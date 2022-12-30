<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel = "stylesheet" type="text/css"  href="styles.css">
</head>
<%@include file ="navbar.jsp" %>

<body>
<div class="form-container">
<form action="AdminLogin" method="post">
<h4> Please Fill the Required Details: </h4>
<label for ="aName">Name </label>
<br>
<input name = "aName" id ="aName" type="text" placeholder = "Enter Username" >
<label for ="password">Password</label>
<br>
<input name = "password" id ="password" type="password" placeholder = "Enter password" >

<button type="submit"> Login</button>


 </form>
 </div>
</body>
</html>