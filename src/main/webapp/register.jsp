<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Registration</title>
</head>
<%@include file ="adminNavbar.jsp" %>
<body>

<div class="form-container">
<form action="RegisterVoter" method="post">
<h4> Please Fill the Required Details: </h4>
<label for ="uName">Name </label>
<br>
<input name = "uName" id ="uName" type="text" placeholder = "Enter Username" >
<br>
<label for ="pNumber">Phone Number </label>
<br>
<input name = "pNumber" id ="pNumber" type="Number" placeholder = "Enter Phone Number" >
<br>
<label for ="email">Email </label>
<br>
<input name = "email" id ="email" type="email" placeholder = "Enter Email ID" >
<br>
<label for ="address">Address</label>
<br>
<textarea name = "address" id ="address"  rows="3" cols="6"> </textarea>
<br>
<label for ="voterNumber">Voter Number </label>
<br>
<input name = "voterNumber" id ="voterNumber" type="Number" >
<br>
<label for ="dob">Date Of Birth </label>
<br>
<input name = "dob" id ="dob" type="date" >
<br>
<button type="submit"> Register</button>


 </form>
 </div>
</body>
</html>