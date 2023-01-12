<%@page import="com.dao.StudentDao"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
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
<%
  List<Student> list= StudentDao.getAllStudent();
%>
<table border="1" width="100%" cellpadding="10px" cellspacing="10px">

  <tr>
      <th>ID</th>
      <th>FIRST NAME</th>
      <th>LAST NAME</th>
      <th>EMAIL</th>
      <th>MOBILE</th>
      <th>ADDRESS</th>
      <th>GENDER</th>
      <th>EDIT</th>
      <th>DELETE</th>
  </tr>
  <%
  for(Student s: list){
	  
	  %>
	  <tr>
	      <td><%=s.getId()%></td>
	    <td><%=s.getFname()%></td>
	    <td><%=s.getLname()%></td>
	    <td><%=s.getEmail()%></td>
	    <td><%=s.getMobile()%></td>
	    <td><%=s.getAddress()%></td>
	    <td><%=s.getGender()%></td>
	    <td>
	      <form name="edit" method="post" action="Studentcontroller">
	      <input type="hidden" name="id" value="<%=s.getId()%>">
	      <input type="submit" name="action" value="EDIT" class="btn btn-primary" >
	      </form>
	    </td>
	    <td>
	      <form name="delete" method="post" action="Studentcontroller">
	      <input type="hidden" name="id" value="<%=s.getId()%>">
	      <input type="submit" name="action" value="DELETE" class="btn btn-danger" >
	      </form>
	    </td>
	    
	  </tr>
      <%
                   }
      %>
</table>
<a href="index.jsp">Add new Student</a>

</body>
</html>