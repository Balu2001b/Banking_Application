<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deposit</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
    <style type="text/css">
    
    h1{

    background-color: red;
    text-align: center;
}
h3{

	position: absolute;
	top: 350px;
	left:500px;

}
body{

    background-image: url("deposit.jpg");
    background-size:1600px 680px;
    background-repeat: no-repeat;

}
.deposit{

    position: absolute;
    left: 500px;
    top: 200px;

}

input{

    padding: 5px;
    border-radius: 5px;
    border:1px solid;

}

.dep{

    text-decoration: none;
    color: black;

    padding: 10px;
    border-radius: 5px;
    border: 1px;
    font-weight: bolder;
    font-size: 15px;
    background-color: red;

}
.dep:hover{

    background-color: rgb(194, 0, 0);
}
a{
	text-decoration: none;
    color: black;

    padding: 10px;
    border-radius: 5px;
    border: 1px;
    font-weight: bolder;
    font-size: 15px;
    background-color: rgb(88, 156, 245);
	

}
    
    </style>
</head>
<body>
<form action="Deposit">
<h1>DEPOSIT MONEY</h1>
    
    <div class="deposit">
    <label>Account_No :</label>
        <input type="number" placeholder="Enter Account Number" name="number" required="required"><br><br>
    
        <label>Deposit</label>
        <input type="number" placeholder="Enter money to deposit" name="deposit" required="required"><br><br>

        <input type="submit" value="Deposit" class="dep">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="service.jsp">Back</a>
    </div>
    </form>
    <%
				String message = (String)request.getAttribute("bal");
				if(message != null)
				{
			%>
				<center>
						<h3 style="color: blue;"><%= message%></h3>
						
				</center>
			<%
				}
			%>
			<%
				String success = (String)request.getAttribute("msg");
				if(success != null)
				{
			%>
				<center>
						<h3 style="color: red" ><%= success%></h3>
						<marquee scrollamount="15px" style="color: red;">Thank you for choosing our Bank</marquee>
				</center>
			<%
				}
			%>
</body>
</html>