<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="Header and Footer/headerfooter.css" rel="stylesheet" type="text/css"/>
<meta charset="ISO-8859-1">
<title>AddStock</title>

<style>

body {
  background-image: url('images/car-932455_1920.jpg');
  background-repeat: no-repeat, repeat;
  font-family: 'Arial', sans-serif;
  text-align:center
}
h1 {
  margin: auto;
  width: 75%;
  border-radius: 20px;
  padding: 10px;
  color: white;
 
}
.mydiv {
  background-color: rgba(0, 0, 0, 0.411); 
  color: black;
  margin: auto;
  width: 40%;
  border-radius: 10px;
  padding: 10px;
  text-align:center
}
.submit
{
    background-color: dodgerblue;
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
.description
{
	color: black;
    font-size: 16px;
    height: 30px;
    width: 50%;
    border-radius: 8px;
    box-shadow: 2px 2px 8px;
}
.description1
{
	color: black;
    font-size: 16px;
    height: 70px;
    width: 50%;
    border-radius: 8px;
    box-shadow: 2px 2px 8px;
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

</div><br><br><br><br><br><br>

	<script>
		function myfun(){
			var a = document.getElementById("itemCode").value;
			var b = document.getElementById("name").value;
			var c = document.getElementById("quantity").value;
			var e = document.getElementById("price").value;
			if(a==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Code ";
				return false;
			}
			if(a.length>5){
				document.getElementById("massages").innerHTML="**Maximum Five characters only!";
				return false;
			}
			if(b==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Name";
				return false;
			}
			if(c==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Quantity ";
				return false;
			}
			if(e==""){
				document.getElementById("massages").innerHTML=" Please Enter Item Price ";
				return false;
			}	
		}
	</script>
	
	<div class="miu3">	
		
		<form action="insert" onsubmit="return myfun()" class="regform" id="regform" method="post" >
	
		<div class="mydiv"><br><br>
		<br><br><h1>Enter New SparePart Details</h1><br><br><br>
			<input type="text" name="itemCode"  id="itemCode" placeholder="Item Code" class="description"  ><br><br>
		 	<input type="text" name="name" id="name" placeholder="Item Name" class="description"  ><br><br>
		 	<input type="text" name="quantity"  id="quantity"  placeholder="Quantity"  class="description"  ><br><br>
		 	<input type="text" name="price"   id="price"  placeholder="Price"  class="description"  ><br><br>
		 	<input type= "text" name="description"    placeholder="Description"  class="description1"  ><br><br><br><br><br>
		 	<input type="submit" class="submit" name="submit" value="Add Item"><br><br><br> 
		 	<h4><span style="color:red;  letter-spacing: 1px; text-shadow: 1px 1px 1px black; " id="massages" > </span><br><br></h4><br>  
		</div>
	</form>
</div><br><br><br><br><br><br>
	
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
   <div class="bottom"><p>Copyright @ 2022 - 202  
<!--------------------------------------------------------------------------------------------------------->
</body>
</html>