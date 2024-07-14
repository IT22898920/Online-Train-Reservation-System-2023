
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Train Resolution System - Login</title>
<link rel="stylesheet" href="login_css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
.signup-btn {
	display: block;
	width: 95%;
	padding: 10px;
	margin-top: 12px;
	background-color: #28a745;
	color: #fff;
	text-align: center;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
	text-decoration: none;
}

.signup-btn:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Train Resolution System</h1>
		<form action="LoginServlet" method="post">
			<div class="input-group">
				<label for="uid">Username</label> <i class="fas fa-user"></i> <input
					type="text" id="uid" name="uid" placeholder="Username" required>
			</div>
			<div class="input-group">
				<label for="pass">Password</label> <i class="fas fa-lock"></i> <input
					type="password" id="pass" name="pass" placeholder="Password"required>
			</div>
			<button type="submit" name="submit" value="login">Login</button>

		</form>
		<a href="passengerinsert.jsp" class="signup-btn">Sign Up</a>
		<!-- Using an anchor tag for Sign Up to redirect to a registration page -->
	</div>
	<script>
     function validateForm() {
    	    const username = document.getElementById('uid').value;
    	    const password = document.getElementById('pass').value;
    	    const errorMessageDiv = document.getElementById('error-message');

    	    errorMessageDiv.textContent = '';

    	    if (!username || !password) {
    	        errorMessageDiv.textContent = 'Both fields are required!';
    	        return false;
    	    }

    	    

    	    return true;
    	}
     document.getElementById('profileImage').onerror = function() {
    	    this.onerror = null; 
    	    this.src = 'a.jpg'; 
    	};

     </script>
</body>
</html>
