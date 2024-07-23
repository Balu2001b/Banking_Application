<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
    <style type="text/css">
    
    
    td
{
	padding-bottom : 10px;
}	

body{

    background-image: url("registration.jpg");
    background-size:1600px 680px;
    background-repeat: no-repeat;
    
}
table
{
	
	margin-left : 450px;
}
p{

padding-left: 500px;
}
a{

    
    text-decoration: none;
}
.register{

    position: absolute;
    left: 520px;
    border-radius: 10px;
    font-weight: bolder;
    background-color: rgb(241, 149, 149);
     
}
.clear{

    position: absolute;
    left: 700px;
    border-radius: 10px;
    font-weight: bolder;
    background-color: rgb(76, 76, 231);
}
.register:hover{

    background-color: red;
}
.clear:hover{

    background-color: blue;
}
.reg{
position: absolute;
top:580px;
right: 600px;

}
.gender{
    position: absolute;
    top: 370px;
    left: 600px;
    padding: 5px;
}
.toa{
    position: absolute;
    top: 400px;
    left: 600px;
    padding: 5px;
}
    </style>
</head>
<body>
<form action="Registration" method="post">
<center>
    <h1 style="color: red;">REGISTRATION PROCESS</h1>
   </center>
    <table >
        <tr>
            <td><label>First Name : </label></td>
            <td><input type="text" required="required" name="f_name"></td>
        </tr>
        <tr>
            <td><label>Last Name : </label></td>
            <td><input type="text" required="required" name="l_name"></td>
        </tr>
        <tr>
            <td><label>Mobile : </label></td>
            <td><input type="number" required="required" name="mobile"></td>
        </tr>
        <tr>
            <td><label>Aadhar Card No : </label></td>
            <td><input type="number" required="required" name="aadhar"></td>
        </tr>
        <tr>
            <td><label>Pan Card : </label></td>
            <td><input type="text" required="required" name="pan"></td>
        </tr>
        <tr>
            <td><label>Email-Id : </label></td>
            <td><input type = "email" required="required" name="email"></td>
        </tr>
        <tr>
            <td><label>Address :</label></td>
            <td><textarea required="required" name="address"></textarea></td>
        </tr>
        <tr>
            <td><label>Date of Birth :</label></td>
            <td><input type = "date" required="required" name="dob"></td>
        </tr>
        <tr>
            <td><label>Gender : </label></td>
            <select name="gender" id="Gender" class="gender">
                <option value="Gender">Select Gender</option></td>
              <option value="Male" >Male</option></td>
            <option value="Female">Female</option></td>
            </select>
        </tr>
        <tr>
            <td><label>Type of Account</label></td>
            <select name=toa id="toa" class="toa">
                <option value="Gender">Select Account Type</option></td>
              <option value="Savings Account" >Savings Account</option></td>
            <option value="Current Account">Current Account</option></td>
            <option value="Fixed Deposit Account">Fixed Deposit Account</option></td>
            <option value="Recurring Account">Recurring Account</option></td>
            </select>
            
        </tr>
        
        <tr>
            <td><label>Amount :</label></td>
            <td><input type="number" placeholder=".Rs" required="required" name="amount"></td>
        </tr>
        <tr>
            <td><label>Password :</label></td>
            <td><input type = "password" required="required" name="password"></td>
        </tr>
        <tr>
            <td><label>Confirm Password : </label></td>
            <td><input type = "password" required="required" name="pass1"></td>
        </tr>
        
        </table>

        <td><input type = "submit" value = "Register" class="register"></td>
         <td><input type = "reset" value = "Clear" class="clear"></td><br><br><br><br>
        <p>Already Registered? <a href="login.jsp"> Login</a></p>
        
        </form>
        
        <%
				String register = (String)request.getAttribute("reg");
				if(register != null)
				{
			%>
				<center>
						<h3 style="color: blue;" class="reg"><%= register%></h3>
				</center>
			<%
				}
			%>
			<%
				String fields = (String)request.getAttribute("msg");
				if(fields != null)
				{
			%>
				<center>
						<h3 style="color: red" class="fields"><%= fields%></h3>
				</center>
			<%
				}
			%>
</body>
</html>