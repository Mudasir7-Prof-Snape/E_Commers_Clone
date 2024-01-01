<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preload" href="./bgimages/registerbackground.jpg" as="image">
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
*{
	margin: 0;
	padding: 0;
}
body {
  font-size: 16px;
  font-family: cursive;
  background: url("./bgimages/registerbackground.jpg") no-repeat center center fixed;
  background-size: cover;
  height: 100%;
  overflow: hidden;
}

.headding{
  margin-top:5px;
  text-align: center;
}

.container {
  background-color: none;
  box-shadow: 0 0px 13px 3px #444444;
  padding: 30px;
  border-radius: 10px;
  width: 300px;
  height:auto;
  margin-left: 320px;
  margin-top: 30px;
}

input {
  padding: 12px;
  margin-top:10px;
  margin-bottom: 20px;
  border-radius: 5px;
  font-size: 16px;
  font-family: cursive;
  background-color: transparent;
  border: none;
  border-bottom: 3px solid white;
  outline: none;
}
input:hover {
  border: 3px solid white;
}
button{
font-size: 20px;
padding:5px;
background-color: #007bff;
color: white;
border-radius: 7px;
cursor: pointer;
}
textarea {
  width: 80%;
  height: fit-content;
  margin-bottom: 20px;
  padding: 10px;
  background-color: transparent;
  border: none;
  border-bottom: 3px solid white;
  border-radius:5px;
  outline: none;
}
textarea:hover {
  border: 3px solid white;
}
::placeholder{
	color:black;
}
</style>
</head>
<body>
<div class="headding">
<h2>Welcome to OR-SHOP..register yourself..go on..!</h2>
</div>
	<div class="container">
		<form method="post" action="reg">
	
			<input id="uname" placeholder="User Name" name="uname" type="text"><br>
			
			<input id="email" placeholder="Email" name="email" type="email"><br>
			
			<input id="password" placeholder="Password" name="pass" type="password"><br>
			<label for="gender" class="gender">Gender</label><br>
			<input id="gender" name="gender" type="radio" value="male"> Male<br>
			<input id="gender" name="gender" type="radio" value="female"> Female<br>
			<input id="gender" name="gender" type="radio" value="other"> Other<br>
			<label for="address">Address</label><br>
			<textarea rows="4" id="address" name="address"></textarea><br>
			<div style="text-align: center;">
				<button>Register</button><br>
			</div>
			
			<a href="login.jsp">Already have an account?Login here</a>
		</form>
	</div>
</body>
</html>