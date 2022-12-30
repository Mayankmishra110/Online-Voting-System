<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel = "stylesheet" type="text/css"  href="styles.css">
</head>
<%@include file ="navbar.jsp" %>


<body>

<div class="form-container">
<form action="Contacts" method="post"> 
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
<label for ="comment">Comment</label>
<br>
<textarea name = "comment" id ="comment"  rows="4" cols="8"> </textarea>

<button type="submit"> Submit</button>


 </form>
 </div>
</body>
</html>