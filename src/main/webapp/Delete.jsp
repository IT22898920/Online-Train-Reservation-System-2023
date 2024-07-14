<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Train Resolution System - Delete Account</title>
<link rel="stylesheet" href="Delete_css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
		<h1>Delete Account</h1>
		<p>Enter confirm the deletion of your account. This action is
			irreversible.</p>
		<form action="DeletePassengerServlet" method="post">
			<div class="form-group">
				<label for="id">Passenger ID:</label> <input type="text"
					class="form-control" id="id" name="pasid" value="<%= id %>"
					readonly>
			</div>
			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" name="name" value="<%= name %>"
					readonly>
			</div>
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" name="email" value="<%= email %>"
					readonly>
			</div>
			<div class="form-group">

				<label for="phone">Phone Number:</label> <input type="tel"
					class="form-control" id="phone" name="phone" value="<%= phone %>"
					readonly>
			</div>
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="username" name="uname"
					value="<%= userName %>" readonly>
			</div>

			
			<button type="submit" name="submit" class="btn btn-warning"
				name="submit">Delete Account</button>

		</form>
	</div>
</body>
</html>
