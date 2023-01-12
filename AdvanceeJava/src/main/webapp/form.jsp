<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function CheckFname(){
	
	var f=document.frm.fname.value;
	var reg=/^[A-Za-z]+$/;
	if(f==""){
		document.getElementById("fname").innerHTML="please enter first name";
	}
	else if(!reg.test(f)){
		document.getElementById("fname").innerHTML="please enter alphabats only";
	}
	
	else{
		document.getElementById("fname").innerHTML="";
	}
}
function Checklname(){
	
	var g=document.frm.lname.value;
	var r=/^[A-Za-z]+$/;
	if(g==""){
		document.getElementById("lname").innerHTML="please enter last name";
	}
	else if(!r.test(g)){
		document.getElementById("lname").innerHTML="please enter alphabats only";
	}
	
	else{
		document.getElementById("lname").innerHTML="";
	}
}
function checkEmail(){
	var e=document.frm.email.value;
	var k=/^[a-zA-Z-._0-9]+@[a-zA-Z]+\.[a-zA-Z]{2,4}$/;
	if(e==""){
		document.getElementById("email").innerHTML="please enter email";
	}
	else if(!k.test(e)){
		document.getElementById("email").innerHTML="please enter valid email";
		}
	else{
		document.getElementById("email").innerHTML="";
	}
}
function checkMobile(){
	var e=document.frm.mobile.value;
	var k=/^[0-9]{10}$/;
	if(e==""){
		document.getElementById("mobile").innerHTML="please enter mobile no";
	}
	else if(!k.test(e)){
		document.getElementById("mobile").innerHTML="please enter 10 digits only";
		}
	else{
		document.getElementById("mobile").innerHTML="";
	}
}
function checkPassword(){
	
	var f=document.frm.password.value;
	var reg=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
	if(f==""){
		document.getElementById("password").innerHTML="please enter password";
	}
	else if(!reg.test(f)){
		document.getElementById("password").innerHTML="min 1 upper ,lower,numeric & special char{8,15}}";
	}
	
	else{
		document.getElementById("password").innerHTML="";
	}
}
function checkCpassword(){
	
	var p1=document.frm.password.value;
	var p2=document.frm.cpassword.value;

	if(p2==""){
		document.getElementById("cpassword").innerHTML="please enter confirm password";
	}
	else if(p1!=p2){
		document.getElementById("cpassword").innerHTML="password and confirm password does not matched";
	}
	
	else{
		document.getElementById("cpassword").innerHTML="";
	}
}
</script>
<script type="text/javascript">
</script>
</head>
<body>
<form name="frm" method="post" action="">
<table cellpadding="5px" cellspace="5px">
    <tr>
       <td>First name</td>
       <td><input type="text" name="fname" onblur="CheckFname();"></td>
       <td><span id="fname"></span></td>
    </tr>
    <tr>
       <td>last name</td>
       <td><input type="text" name="lname" onblur="Checklname();"></td>
       <td><span id="lname"></span></td>
    </tr>
    
    <tr>
       <td>Email</td>
       <td><input type="text" name="email" onblur="checkEmail();"></td>
       <td><span id="email"></span></td>
    </tr>
    <tr>
       <td>Mobile</td>
       <td><input type="text" name="mobile" onblur="checkMobile();"></td>
       <td><span id="mobile"></span>
    </tr>
    
    <tr>
    <td>Address</td>
    <td><textarea rows="5" cols="21" name="address"></textarea></td>
    </tr>
    
    <tr>
    <td>Gender</td>
    <td><input type="radio" name="gender" value="male">male</td>
    <td><input type="radio" name="gender" value="female">female</td>
    </tr>
    <tr>
    <td>Hobby</td>
    <td><input type="checkbox" name="hobby" value="music">music<br>
        <input type="checkbox" name="hobby" value="singing">singing<br>
        <input type="checkbox" name="hobby" value="traveling">traveling<br>
        <input type="checkbox" name="hobby" value="playing">playing
        </td>
    </tr>
    
    <tr>
    <td>Education</td>
    <td>
    <select name="education">
      <option>---select education---</option>
      <option value="10th">10th</option>
      <option value="12th">12th</option>
      <option value="btech">btech</option>
      <option value="bsc">bsc</option>
      <option value="bca">bca</option>
      <option value="bcom">bcom</option>    
    </select>
    </td>
    </tr>
    
    <tr>
    <td>Resume</td>
    <td><input type="file" name="resume"></td>
    </tr>
    
    <tr>
    <td>password</td>
    <td><input type="password" name="password" onblur="checkPassword();" ></td>
    <td><span id="password"></span></td>
    </tr>
    
    <tr>
    <td>Confirm password</td>
    <td><input type="password" name="cpassword" onblur="checkCpassword();"></td>
    <td><span id="cpassword"></span></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
    <input type="submit" name="action" value="SUBMIT">
    </td>
    </tr>
    
    

 </table>

</form>
</body>
</html>