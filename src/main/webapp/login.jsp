<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
*{
	margin: 0;
	padding: 0;
}
body {
  font-size: 16px;
  font-family: cursive;
  background: url("./bgimages/loginbackground.jpg") no-repeat center center fixed;
  background-size: cover;
  height: 100%;
  overflow: hidden;
}
.container {
  background-color: white;
  box-shadow: 0 0px 13px 3px #444444;
  padding: 30px;
  border-radius: 10px;
  width: 280px;
  height:auto;
  margin-left: 300px;
  margin-top: 130px;
}
.headding{
  margin-top:60px;
  text-align: center;
}
input {
  padding: 12px;
  margin-top:10px;
  margin-bottom: 20px;
  border-radius: 5px;
  font-size: 16px;
  font-family: cursive;
  color: #495057;
  background-color: transparent;
  border: none;
  border-bottom: 3px solid #ced4da;
  outline: none;
}
input:hover {
  border: 3px solid #ccc;
}
button{
font-size: 20px;
padding:5px;
background-color: #007bff;
color: white;
border-radius:7px;
cursor: pointer
}
</style>
</head>
<body>
<div class="headding">
<h1>Welcome back..!</h1>
</div>
	<div class="container">
	<div style="text-align: center;font-size: 30px">
		<h3>Login</h3>
	</div>
	
		<form method="post" action="log">
			<label for="uname">User Name</label><br>
			<input id="uname" placeholder="Type user name" name="uname" type="text"><br>
			<label for="pass">Password</label><br>
			<input id="pass" placeholder="Type password" name="password" type="password"><br>
			<div style="text-align: center;">
				<button type="submit">Login</button>
			</div>
			
		</form>
	</div>
</body>
</html>