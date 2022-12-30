<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<link rel = "stylesheet" type="text/css"  href="styles.css">
</head>
<body>
<%@include file ="navbar.jsp" %>
<div class="form-container">
<form action="VoterLogin" method="post">
<h4> Enter Your Voter card Number</h4>
<label for ="voterNumber">Voter ID </label>
<br>
<input name = "voterNumber" id ="voterNumber" type="text" placeholder = "Enter Voter ID Number" >
<br>
<button type="submit"> Login</button>

<a href ="adminlogin.jsp">Admin</a>

 </form>
 </div>
</body>
</html>