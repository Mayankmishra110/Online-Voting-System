<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Voter</title>
</head>
<%@include file ="navbar.jsp" %>
<body>
<div class="form-container">
<form action="Vote" method="post">
<h4> Please Enter Your Voter ID Number: </h4>
<label for ="voterNumber">Voter ID </label>
<br>
<input name = "voterNumber" id ="voterNumber" type="text" >
<h5> Choose Party</h5>
<select name="partie" id="partie">
  <option value="aap">Aam Aadmi Party</option>
  <option value="bjp"> BJP</option>
  <option value="congress">Congress</option>
  <option value="bsp">BSP</option>
  <option value="cpi">CPI</option>
</select>
<button type="submit"> Submit</button>


 </form>
 </div>
</body>
</html>