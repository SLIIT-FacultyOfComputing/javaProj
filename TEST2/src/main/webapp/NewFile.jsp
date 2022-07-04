<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
  width: 40%;
  
  border-radius: 20px;
  padding: 10px;
  color: darkblue;
  background-color: rgba(255, 255, 255, .15); 
}
div {
  background-color: rgba(255, 255, 255, .15); 
  color: black;
  margin: auto;
  width: 40%;
  
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

	<br><br><br><br>
	<h1>Enter New SparePart Details</h1><br><br><br>
	
	<form action="insert" method="post" >
	
	<div><br><br> <br> <br><br>
	
	 <input type="text" name="itemCode"  placeholder="Item Code" class="description" required ><br><br>
	 <input type="text" name="name" placeholder="Item Name" class="description" required ><br><br>
	 <input type="text" name="quantity" placeholder="Quantity"  class="description" required ><br><br>
	 
	 <input type="text" name="price" placeholder="Price"  class="description"  ><br><br>
	 <input type= "text" name="description" placeholder="Description"  class="description1" required ><br><br><br>
	
	<svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-cloud-download" viewBox="0 0 16 16">
  	<path d="M4.406 1.342A5.53 5.53 0 0 1 8 0c2.69 0 4.923 2 5.166 4.579C14.758 4.804 16 6.137 16 7.773 16 9.569 14.502 11 12.687 11H10a.5.5 0 0 1 0-1h2.688C13.979 10 15 8.988 15 7.773c0-1.216-1.02-2.228-2.313-2.228h-.5v-.5C12.188 2.825 10.328 1 8 1a4.53 4.53 0 0 0-2.941 1.1c-.757.652-1.153 1.438-1.153 2.055v.448l-.445.049C2.064 4.805 1 5.952 1 7.318 1 8.785 2.23 10 3.781 10H6a.5.5 0 0 1 0 1H3.781C1.708 11 0 9.366 0 7.318c0-1.763 1.266-3.223 2.942-3.593.143-.863.698-1.723 1.464-2.383z"/>
  	<path d="M7.646 15.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 14.293V5.5a.5.5 0 0 0-1 0v8.793l-2.146-2.147a.5.5 0 0 0-.708.708l3 3z"/>
	</svg><br><br>
	
	<input type="submit" class="submit" name="submit" value="Add Item"><br><br><br> 
	</div>
	</form>	
</body>
</html>