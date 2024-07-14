<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Train Resolution System - Password Reset</title>
<link rel="stylesheet" href="login_css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
.form-control {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 10px;
	font-size: 16px;
}
</style>
</head>
<body>

	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String userName = request.getParameter("username");
	String password = request.getParameter("Password");
	%>

	<div class="container">
		<h1>Account Update Profile</h1>
		<p>Enter your email address and set a new password.</p>
		<form action="UpdatePassengerServlet" method="post">
			<div class="form-group">
				<label for="id">Passenger ID:</label> <input type="text"
					class="form-control" id="id" name="pasid" value="<%= id %>"
					readonly>
			</div>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" name="name" value="<%= name %>">
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email" value="<%= email %>">
			</div>
			<div class="form-group">

				<label for="phone">Phone Number:</label> <input type="tel"
					class="form-control" id="phone" name="phone" value="<%= phone %>">
			</div>
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="username" name="uname"
					value="<%= userName %>">
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="pass"
					value="<%= password %>">
			</div>
			
			<button type="submit" name="submit" class="btn btn-warning"
				name="submit">Account Update</button>
		</form>
	</div>
</body>
</html>
