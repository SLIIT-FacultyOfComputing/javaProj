<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table>
	
	 <c:forEach var="stk" items="${stkDetails}">
	 <c:set var="itemcode" value="${stk.itemcode}"/>
	 <c:set var="name" value="${stk.name}"/>
	 <c:set var="quantity" value="${stk.quantity}"/>
	 <c:set var="description" value="${stk.description}"/>
	 <c:set var="price" value="${stk.price}"/>
   
   <tr>
   		<td>Item ID</td>
   		<td>${stk.itemcode}</td>
   	</tr>	
   	<tr>
   		<td>Item Name</td>
   		<td>${stk.name}</td>
   	</tr>
   	<tr>
   		<td>Item Quantity</td>
  		<td>${stk.quantity}</td>
  	</tr>
  	<tr>
  		<td>Item Description</td>
  		<td>${stk.description}</td>
  	</tr>
  	<tr>	
  		<td>Item Price</td>
  		<td>${stk.price}</td>
  	</tr>
   </c:forEach>
   </table>
   
   <c:url value="updatestock.jsp" var="stkupdate">  gathering data from url
   		<c:param name="itemcode" value="${itemcode}"/>
   		<c:param name="name" value="${name}"/>
   		<c:param name="quantity" value="${quantity}"/>
   		<c:param name="description" value="${description}"/>
   		<c:param name="price" value="${price}"/>	
   </c:url>
   
   <a href="${stkupdate}">
   <input type="button" name="update" value="Update Stock data">
   </a><br>
   
   <c:url value="deletestock.jsp" var="stkdelete">  <!-- gathering data from url-->
   		<c:param name="itemcode" value="${itemcode}"/>
   		<c:param name="name" value="${name}"/>
   		<c:param name="quantity" value="${quantity}"/>
   		<c:param name="description" value="${description}"/>
   		<c:param name="price" value="${price}"/>	
   </c:url>
   
   <a href="${stkdelete}">
    <input type="button" name="delete" value="Delete data">
   </a>
</body>
</html>



