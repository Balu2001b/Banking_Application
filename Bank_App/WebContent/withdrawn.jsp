<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdrawn</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
    <style type="text/css">
    
    h1{

    text-align: center;
    background-color: red;
}

.cash{


    position: absolute;
    top: 300px;
    left: 400px;
}
a{
	text-decoration: none;
    color: black;
    position: absolute;
    left: 300px;
    padding: 10px;
    border-radius: 5px;
    border: 1px;
    font-weight: bolder;
    font-size: 15px;
    background-color: rgb(88, 156, 245);
	

}
.withdraw{

    position: absolute;
    left: 100px;
    padding: 10px;
}
.withdraw:hover{


    background-color: red;
    font-weight: bolder;
    border: 1px;
}
input{

	padding: 10px;
	border-radius: 5px;
}
    </style>
</head>
<body>
<form action="withdraw" method="post">
	<h1>CASH WITHDRAWAL</h1>
    <div class="cash">
        <label>Account Number :</label>
        <input type="number" name="number" placeholder="Enter Account Number" required="required"><br><br>

        <label>Enter Amount to Withdrawn :</label>
        <input type="number" name="amount" placeholder="Enter the Amount" required="required"><br><br>

        <input type="submit" value="withdraw" class="withdraw">
        <a href="service.jsp">Back</a>
    </div>
    </form>	
    
    <%
				String message = (String)request.getAttribute("bal");
				if(message != null)
				{
					
			%>
				<center>
						<h3 style="color: red;"><%= message%></h3>
						<marquee scrollamount="15px" style="color: red;">Thank you for choosing our Bank</marquee>
						
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
						<h3 style="color: blue;" ><%= success%></h3>
						<marquee scrollamount="15px" style="color: red;">Thank you for choosing our Bank</marquee>
				</center>
			<%
				}
			%>
</body>
</html>