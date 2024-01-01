<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ecommers.dbhandler.DataFetcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OR-SHOP home</title>
<style>
body {
  font-size: 16px;
  font-family: cursive;
  background: url("./bgimages/homebg.jpg") no-repeat center center fixed;
  background-size: cover;
  height: 100%;
  
}
.product-table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

.product-table th {
    background-color: #f2f2f2;
    font-weight: bold;
    text-align: left;
    padding: 10px;
}

.product-table td {
    border-bottom: 1px solid #ddd;
    padding: 10px;
}

.product-table img {
    width: 100px; 
    height: auto;
}

.product-table input[type="submit"] {
    padding: 8px 15px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.product-table input[type="submit"]:hover {
    background-color: #0056b3;
}
h1{
margin:0;
text-align: center;
}
.cart{
text-align: right;
margin-right: 20px;
margin-bottom: 20px;
}
button{
font-family: cursive;
font-size: 20px;
background-color: lightgreen;
cursor: pointer;
transition: background-color 0.3s ease;
}
button:hover {
	background-color: green;
}
</style>
</head>
<body>
	<%
		List plist=DataFetcher.fetchProductsInfo();
	%>
	<header>
		<h1>E-commers</h1>
		<div class="cart">
		<form action="display-cart" method="post">
			<button>View Cart</button>
		</form>
			
		</div>
		
		<table class="product-table">
    <thead>
        <tr>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Image</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        
        <% for(int i=0;i<plist.size();i++){
			String[] pArr=((String)plist.get(i)).split(":");
								
		%>
						<tr>
							<td><%= pArr[1] %></td>
							<td><%= pArr[2] %></td>
							<td><%= pArr[3] %></td>
							<td><img src="productImg/<%= pArr[4] %>" alt="Product image" style="width:500px;height:300px"></td>
							 <td>
        						<form action="add-to-cart" method="post">
            					<input type="hidden" name="productId" value="<%= pArr[0] %>">
            					<input type="submit" value="Add to Cart">
        						</form>
    						</td>
						</tr>
						<%
							}
						%>
    </tbody>
</table>

	</header>
</body>
</html>