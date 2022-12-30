<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.DriverManager" %>
<%@page import = "java.sql.ResultSet" %>
<%@page import = "java.sql.Statement" %>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>



<head>
<meta charset="UTF-8">
<title>Check Result</title>
<link rel = "stylesheet" type="text/css"  href="styles.css">
<%
String a[] = new String[100];

Class.forName("com.mysql.cj.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevoting","root","Mayank");

PreparedStatement preparedStatement = con.prepareStatement("select partie,count(partie) as c from vote group by partie");
ResultSet rs=((java.sql.Statement) preparedStatement).executeQuery("select partie,count(partie) as c from vote group by partie");

int i=0;
while(rs.next()){
	int temp = Integer.valueOf(rs.getString("c")) -1 ;
    a[i] = String.valueOf(temp);	
    i++;
}
%>
</head>
<%@ include file="adminNavbar.jsp"%> 
<body>

<div class="check-Table">
<table>
<tr>
<th>Parties</th>
<th>Names</th>
<th>Votes</th>
</tr>

<tr>
<td>
<img src="images/Aap.jpg" alt="AAP">
</td>
<td> Aam Aadmi Party </td>
<td><%=a[0]%></td>
</tr>

<tr>
<td>
<img src="images/bjp.jpg" alt="BJP">
</td>
<td> BJP </td>
<td><%=a[1]%></td>
</tr>

<tr>
<td>
<img src="images/congress.png" alt="Congress">
</td>
<td> Congress </td>
<td><%=a[3]%></td>
</tr>

<tr>
<td>
<img src="images/bsp.jpg" alt="BSP">
</td>
<td> BSP </td>
<td><%=a[4]%></td>
</tr>

<tr>
<td>
<img src="images/CPI-banner.jpeg" alt="CPI">
</td>
<td> CPI</td>
<td><%=a[5]%></td>
</tr>


</table>
</div>
</body>
</html>