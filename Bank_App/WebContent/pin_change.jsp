<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PIN change</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
<style>

h2{

    text-align: center;
    background-color: red;

}
.pin{

    position: absolute;
    top: 350px;
    left: 500px;
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
.enter{

    padding: 10px;
    border-radius: 5px;
    position: absolute;
    left: 80px;
}
.enter:hover{

    background-color: red;
}
input{

	padding: 10px;
	border-radius: 5px;
}

</style>
</head>
<body>
<form action="pin" method="post">
	<h2>PIN change</h2>
    <div class="pin">

        <label >Mobile_No :</label>
        <input type="number" placeholder="Enter Mobile Number" name="number"><br><br>
        

        <label >Create New PIN :</label>
        <input type="password" placeholder="Create new PIN" name="pass"><br><br>

        <input type="submit" value="Enter" class="enter">&nbsp;&nbsp;
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
				if(success != null )
				{
			%>
				<center>
						<h3 style="color: red" class="success"><%= success%></h3>
						<marquee scrollamount="15px" style="color: red;">Thank you for choosing our Bank</marquee>
				</center>
			<%
				}
			%>
</body>
</html>