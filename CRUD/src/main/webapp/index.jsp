<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<form name="frm" method="post" action="Studentcontroller">
<table cellpadding="7px" cellspacing="7px">
    <tr>
         <td>First name</td>
         <td><input type="text" name="fname"></td>
    </tr>
    <tr>
         <td>last name</td>
         <td><input type="text" name="lname"></td>
    </tr>
    <tr>
         <td>Email</td>
         <td><input type="text" name="email"></td>
    </tr>
    <tr>
         <td>Mobile</td>
         <td><input type="text" name="mobile"></td>
    </tr>
    <tr>
         <td>Address</td>
         <td><textarea rows="5" cols="21" name="address"></textarea></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td>
         <input type="radio" name="gender"  value="male">male
          <input type="radio" name="gender"  value="female">female
          </td>
    </tr>
    
    <tr>
    <td colspan="2" align="center">
      <input type="submit" name="action"  value="INSERT">
      </td>
    </tr>
</table>
</form>
<a href="show.jsp">Show all Student</a>
</body>
</html>