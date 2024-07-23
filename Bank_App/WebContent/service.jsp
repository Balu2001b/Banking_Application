<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
<style type="text/css">
body{

    background-image: url("./service.png");
    background-size:1600px 680px;
    background-repeat: no-repeat;
}
.sec1{
    position: absolute;
    top: 150px;
    left: 50px;

}
.sec2{

    position: absolute;
    top: 150px;
    right: 100px;

}
a{
    text-decoration: none;
    color: black;

    padding: 10px;
    border-radius: 5px;
    border: 1px;
    font-weight: bolder;
    font-size: 20px;
    background-color: rgb(88, 156, 245);

}
.marq{

    color: rgb(0, 255, 55);
    font-size: 20px;
    font-weight: bolder;
}
a:hover{

    background-color: yellow;
    padding: 12px;
}
.trans{

	color: red;
	text-align: center;
	position: absolute;
	top: 400px;
	left: 650px;

}
</style>
</head>
<body>
	<center>
        <h2 style="color: red;">Please Choose any Service</h2>
        <marquee direction="left" scrollamount="15px" class="marq">Thank you for choosing my bank....Have a nice day</marquee>
        <h2 class="trans">Please select the Transaction</h2>
    </center>
    <div class="sec1">
        <a href="withdrawn.jsp">Cash Withdrawal</a><br><br><br><br><br><br><br>
        <a href="">View Statement</a><br><br><br><br><br><br><br>
        <a href="pin_change.jsp">PIN Change</a><br><br><br><br><br><br><br>
        <a href="login.jsp">Exit</a><br><br><br><br><br><br><br>

    </div>
    <div class="sec2">
        <a href="Deposit.jsp">Cash Deposit</a><br><br><br><br><br><br><br>
        <a href="balance_inquiry.jsp">Balance Inquiry</a><br><br><br><br><br><br><br>
        <a href="account_info.jsp">Account Information</a><br><br><br><br><br><br><br>
        <a href="">Other Services</a><br><br><br><br><br><br><br>
    </div>
</body>
</html>