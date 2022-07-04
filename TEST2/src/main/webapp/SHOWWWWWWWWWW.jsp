<!-- User account-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Automart 3</title>
<link href="Header and Footer/headerfooter.css" rel="stylesheet" type="text/css"/>
<style>

body {
  background-image: url('images/background-6360861.png');
  background-repeat: no-repeat, repeat;
  font-family: 'Arial', sans-serif;
  text-align:center
}

th td{
  border-bottom: 1px solid #ddd;
}

table{
  font-family: 'Arial', sans-serif;
  text-transform: uppercase;
  color: black;
  margin: auto;
  width: 35%;
  text-align:left;
  letter-spacing: 1px;
  text-shadow: 1px 1px 1px black;
  
}

.submit
{
    background-color: orange;
	border-radius: 20px;
	border: 1px solid var(--blue);
	color: var(--white);
	cursor: pointer;
	font-size: 0.8rem;
	font-weight: bold;
	letter-spacing: 0.1rem;
	padding: 0.9rem 4rem;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}
</style>

</head>
<body>
<div class="miu1">
    <div class="miu2">
        <a href="#"><img src="Header and Footer/images/logo2.png" height="100px" width="100px" class="logo"></a>
        <a href="#"><div class="navBar">Home</div></a>
        <a href="#"><div class="navBar">About Us</div></a>
        <a href="#"><div class="navBar">Spare parts</div></a>
        <a href="#"><div class="navBar">Customer reviews</div></a>
        <a href="#"><div class="navBar">Sign up</div></a>
        <a href="#"><div class="navBar">Sign in</div></a>
    </div>
</div><br><br><br><br><br><br><br><br><br>

<!---------------------------------------------------------------------------------------------------------------------->

<div class="miu3">
	<%
		//catch data from  useraccount
		String itemcode = request.getParameter("itemcode");
		String name = request.getParameter("name");
		String quantity = request.getParameter("quantity");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
	%>
	<br><br><br><br><br><br><br><br>
	<table border="1">
	
	<c:forEach var="stk" items="${stkDetails}">

	<c:set var="itemcode" value="${stk.itemcode}"/><!-- assign values to variables -->
	<c:set var="name" value="${stk.name}"/>
	<c:set var="quantity" value="${stk.quantity}"/>
	<c:set var="description" value="${stk.description}"/>
	<c:set var="price" value="${stk.price}"/>
	
	<h1> See what I found! </h1><br><br><br>
	<tr>
		<td>Item Code</td>
		<td>${stk.itemcode}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${stk.name}</td>
	</tr>
	<tr>
		<td>Quantity</td>
		<td>${stk.quantity}</td>
	</tr>
	<tr>
		<td>Description</td>
		<td>${stk.description}</td>
	</tr>
	<tr>
		<td>Price</td>
		<td>${stk.price}</td>
	</tr>
	</c:forEach>
	</table>

</div><br><br><br><br><br><br><br><br><br><br><br><br>
<!--------------------------------------------------------------------------------------------------------->
<div class="miu4">
    <div class="miu5">
            <div class="footer"> 
                <div class="icons"><a href="#"><img src="Header and Footer/images/logo2.png" height="230px" width="230px" class="logo1"></a></div>
            </div>
            <div class="footer">
                <div class="footerA">Quick links</div>
                <a href="#"><div class="footerB">Home</div></a>
                <a href="#"><div class="footerB">About Us</div></a>
                <a href="#"><div class="footerB">Spare parts</div></a>
                <a href="#"><div class="footerB">Customer reviews</div></a>  
            </div>
            <div class="footer">
                <div class="footerA">Contact Us</div>
                <div class="footerC">Hotline: O11 2 705 920</div>
                <div class="footerC">Tele: O77 327 8451</div>
                <a href="#"><div class="footerC">Email: automartspareparts<br>@gmail.com</div></a>
                <div class="footerC">Address: No: 35,Galle road,<br>Colombo.</div>
            </div>
            <div class="footer">
                <div class="footerA">Follow Us</div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/whatsapp.png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/facebook (1).png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/instagram.png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/twitter.png" width="40px" height="40px"></a></div>
                <div class="icon"><a href="#"><img src="Header and Footer/images/linkedin.png" width="40px" height="40px"></a></div>
            </div>  
    </div>
    <div class="bottom"><p>Copyright @ 2022 - 2023 automart@spareparts.com</p></div>  
</div>
<!--------------------------------------------------------------------------------------------------------->

</body>
</html>