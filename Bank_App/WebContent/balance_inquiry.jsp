<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance Inquiry</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
<style type="text/css">
num{

padding: 15px;
border-radius: 5px;

}

.box{

    position: absolute;
    top: 300px;
    left: 550px;
    
    
}
label{

    font-size: 17px;
    font-weight: bolder;
    color: black;
}
h1{
    
    color: black;
    background-color: blue;
    text-align: center;
}
.check{

    position: absolute;
    left: 100px;
    border-radius: 5px;
    border-color: black;
    padding: 10px;

}
.check:hover{

    background-color :yellow;
}
body{

    overflow: hidden;
  
}
.success{
position: absolute;
left: 500px;
top:200px;

}
.message{
position: absolute;
left: 500px;
top:200px;

}
a{
	position:absolute;
	left:200px;
	text-decoration: none;
    color: black;

    padding: 10px;
    border-radius: 5px;
    border: 1px;
    font-weight: bolder;
    font-size: 15px;
    background-color: rgb(88, 156, 245);
	

}
input{

	padding: 10px;
	border-radius: 5px;
}
</style>
</head>
<body>
	<form action="balance" method="post">
	
    
    <h1>BALANCE INQUIRY</h1>
    
    <div class="box">

        <label>Account Number : </label>
        <input type="number" name="number" class="num" placeholder="Enter Account Number" required="required"><br><br><br>

        <input type="submit" value="check" class="check" name="check">&nbsp;&nbsp;
        <a href="service.jsp">Back</a>
    </div>
    </form>
    
    <%
				String message = (String)request.getAttribute("msg");
				if(message != null)
				{
			%>
				<center>
						<h3 style="color: red" class="message"><%= message%></h3>
				</center>
			<%
				}
			%>
			<%
				String success = (String)request.getAttribute("suc");
				String suc1 = (String)request.getAttribute("suc1"); 
				if(success != null && suc1 !=null)
				{
			%>
				<center>
						<h3 style="color: red" class="success"><%= success%><br><%= suc1 %></h3>
						<marquee scrollamount="15px" style="color: red;">Thank you for choosing our Bank</marquee>
				</center>
			<%
				}
			%>
			
</body>
</html>