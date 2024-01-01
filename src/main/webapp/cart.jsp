<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.ecommers.product.Cart" %>
<%@ page import="com.ecommers.product.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>your cart</title>
<style>
body{
background-color:  #ffcc00;
font-family: cursive;
}
.product-table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
    display:flex;
    justify-content: center;
	align-items: center;
}

.product-table th {
    background-color: #f2f2f2;
    font-weight: bold;
    text-align: left;
    padding: 10px;
}

.product-table td {
    border-bottom: 1px solid white;
    padding: 10px;
}
table{
	border: 2px solid black;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0px 13px 3px #444444;
}
h1{
text-align: center;
}
.pdisp{
font-size: 10px
}
</style>
</head>
<body>
	<%
    List<Product> items = Cart.getItems();
    if(items == null || items.isEmpty()){
        items = new ArrayList<>();
        Product p = new Product(000,"xxxxxx","xxxxxx",0);
        items.add(p);
    }
%>
	<h1>Cart Items</h1>
	<div class="product-table">
			<table >
					<thead>
						<tr>
							<th>Product_Name</th>
							<th>Product_Description</th>
							<th>Product_Price</th>
						</tr>
					</thead>
					<tbody>
    <% for (Product item : items) { 
    if(item.getPid()==000) continue;
    %>
    
        <tr>
            <td><%= item.getPname() %></td>
            <td><%= item.getPdesc() %></td>
            <td><%= item.getPprice() %></td>
        </tr>
    <% } %>
</tbody>
				</table>
		</div>
		<%
		try{
		%>
		<div class="pdisp">
			<h1>Your total cart price : Rs <%= Cart.getTotal() %></h1>
		</div>
		<%} catch(Exception e){%>
		<%} %>
</body>
</html>