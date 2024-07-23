<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
<style type="text/css">

.box{

    
    position: absolute;
    top: 200px;
    left: 800px;
    border: 1px solid;
    border-radius: 10px;
    height: 250px;
    width: 300px;
    padding-left: 10px;
    background-color: white;
    padding-top: 50px;
    
    
}
body{

    background-image: url("bank_bg.jpg");
    background-size:1600px 680px;
    background-repeat: no-repeat;
    
}
h2{

    padding-left: 20px;
    font-weight: bolder;
}
.submit{

    position: absolute;
    left: 200px;
    border-radius: 6px;
    color: black;
    background-color: #add8e6;
    padding: 10px;

}
.submit:hover{

    background-color: #1974d2;
}
a{

    text-decoration: none;
    color: blue;
}
input{

    align-items: center;
    border-radius: 5px;

}
label{

    font-size: 18px;
    font-weight: bolder;

}
h3{

position: absolute;
right: 450px;
top:200px;

}
.success{
position: absolute;
right: 450px;
top:200px;

}
</style>
</head>
<body>
<form action="login" method="post">
    <div class="box">

        <h2 style="color: red;">Welcome to Balu Bank</h2>

        <label>Account_Id <i class="fa-solid fa-user fa-fade"></i> </label>
        <input type="text" placeholder="Enter your Mobile number" required="required" name="number"><br><br>

        <label>PIN <i class="fa-solid fa-lock fa-fade"></i> </label>
        <input type="password" placeholder="Enter your PIN" required="required" name="password"><br><br><br>

        <input type="submit"  value="Login" class="submit"><br><br>

        <p>Create a new account? <a href="Registration.jsp">Account Opening</a></p>


    </div>
    </form>
    
    <%
				String message = (String)request.getAttribute("msg");
				if(message != null)
				{
			%>
				<center>
						<h3 style="color: red"><%= message%></h3>
				</center>
			<%
				}
			%>
			<%
				String success = (String)request.getAttribute("suc");
				if(success != null)
				{
			%>
				<center>
						<h3 style="color: green" class="success"><%= success%></h3>
				</center>
			<%
				}
			%>
</body>
</html>