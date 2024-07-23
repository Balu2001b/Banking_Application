<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Information</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="icon" href="banklogo.svg">
<style type="text/css">

.info{

    position: absolute;
    top: 80px;
    left: 150px;
}
h1{

    background-color: red;
    text-align: center;
}
.enter{

    position: absolute;
    left: 100px;
    padding: 10px;
    border-radius: 5px;
}
.enter:hover{

background-color: red;

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
<form action="acc_info" method="post">
	<h1>Account Information</h1>
    <div class="info">
        <label>Account Number :</label>
        <input type="number" placeholder="Enter Account Number" required="required" name="number"><br><br><br>

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
						<h3 style="color: red"><%= message%></h3>
				</center>
			<%
				}
			%>
			<%
				String success = (String)request.getAttribute("suc");
				String suc1 = (String)request.getAttribute("suc1");
				String suc2 = (String)request.getAttribute("suc2");
				String suc3 = (String)request.getAttribute("suc3");
				String suc4 = (String)request.getAttribute("suc4");
				String suc5 = (String)request.getAttribute("suc5");
				String suc6 = (String)request.getAttribute("suc6");
				String suc7 = (String)request.getAttribute("suc7");
				String suc8 = (String)request.getAttribute("suc8");
				String suc9 = (String)request.getAttribute("suc9");
				
				if(success != null && suc1!=null && suc2!=null&& suc3!=null&& suc4!=null&& suc5!=null&& suc6!=null&& suc7!=null&& suc8!=null&& suc9!=null)
					
				{
			%>
				<center>
						<h3 style="color: red" class="success"><%= success%><br><br><%= suc1 %><br><br><%= suc2 %><br><br><%= suc3 %><br><br><%= suc4 %><br><br><%= suc5 %>
						<br><br><%= suc6 %><br><br><%= suc7 %><br><br><%= suc8 %><br><br><%= suc9 %></h3>
				</center>
			<%
				}
			%>
			
    
    	
    
</body>
</html>