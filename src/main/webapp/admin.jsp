<%@ page import="java.util.List" %>
<%@ page import="com.ecommers.dbhandler.DataFetcher" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>

<style>
body{
	background-color: #ffcc00;
}
.tab {
    display: none;
}
.tab.active {
    display: block;
}
.content-container{
	display: flex; 
	justify-content: center; 
	align-items: center; 
	margin-top: 100px;
	font-family: cursive;
	font-size: 20px;
}
#tab3{
	padding : 20px;
	border-radius: 5px;
	background-color: white;
  	box-shadow: 0 0px 13px 3px #444444;
  	border: 2px solid black;
}
table, td, th {
  border: 1px solid;
  padding: 10px;
}
table {
  width: 100%;
  border-collapse: collapse;
}
button{
	font-size: 25px;
}
button[type="submit"] {
    padding: 8px 15px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
    font-size: 20px;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}
input{
height:25px;
}
</style>
</head>
<body>

	<%
		List userlist=DataFetcher.fetchUsersInfo();
	%>
	<%
		List productlist=DataFetcher.fetchProductsInfo();
	%>
		<div style="text-align : center;padding : 10px;">
			<button class="viewcustomers" data-tab="tab1">View Customers</button>
			<button class="productsinfo" data-tab="tab2">View products info</button>
			<button class="addproduct" data-tab="tab3">Add a product</button>
		</div><hr>
		<div class="content-container">
			<div class="tab" id="tab1">
				<table>
					<thead>
						<tr>
							<th>Username</th>
							<th>Email</th>
							<th>Gender</th>
							<th>Address</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<userlist.size();i++){
								String[] cArr=((String)userlist.get(i)).split(":");
								
						%>
						<tr>
							<td><%= cArr[0] %></td>
							<td><%= cArr[1] %></td>
							<td><%= cArr[2] %></td>
							<td><%= cArr[3] %></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
			<div class="tab" id="tab3">
				<form action="addp" method="post" style="padding:15px;">
					<label id="pid">Product ID</label><br>
					<input type="text" id="pid" name="pid"><br>
					<label id="pname">Product Name</label><br>
					<input type="text" id="pname" name="pname"><br>
					<label id="pdec">Product Description</label><br>
					<input type="text" id="pdec" name="pdec"><br>
					<label id="pprice">Product Price</label><br>
					<input type="number" id="pprice" name="pprice"><br>
					<label id="pimg">Product Image</label><br>
					<input type="text" id="pimg" name="pimg"><br>
					<div style="text-align: center">
						<button type="submit" style="margin-top: 5px;">Submit</button>
					</div>
					
				</form>
			</div>
			<div>
			<div class="tab" id="tab2">
				<table>
					<thead>
						<tr>
							<th>Product_ID</th>
							<th>Product_Name</th>
							<th>Product_description</th>
							<th>Product_Price</th>
							<th>Product_Image</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<productlist.size();i++){
								String[] pArr=((String)productlist.get(i)).split(":");
								
						%>
						<tr>
							<td><%= pArr[0] %></td>
							<td><%= pArr[1] %></td>
							<td><%= pArr[2] %></td>
							<td><%= pArr[3] %></td>
							<td><img src="productImg/<%= pArr[4] %>" alt="Product image" style="width:500px;height:300px"></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script>
    const buttons = document.querySelectorAll('button');
	const t1=document.getElementById('tab1')
    buttons.forEach(button => {
        const tabId = button.getAttribute('data-tab');
        button.addEventListener('click', function () {
        	document.getElementById('tab1').classList.remove('active');
        	document.getElementById('tab2').classList.remove('active');
        	document.getElementById('tab3').classList.remove('active');
			document.getElementById(tabId).classList.add('active');
            
        });
    });
</script>
	
</body>
</html>