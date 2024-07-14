<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Train Resolution System - Register</title>
<link rel="stylesheet" href="register_css.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
.signup-btn {
	display: block;
	width: 94%;
	padding: 10px;
	margin-top: 10px;
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
		<h1>Online Train Reservation System</h1>
		<form action="passengerinsert" method="post">
			<div class="input-group">
				<i class="fas fa-user"></i> <input type="text" name="name"
					placeholder="Name" required>
			</div>
			<div class="input-group">
				<i class="fas fa-user-tag"></i> <input type="text" name="uid"
					placeholder="Username" required>
			</div>
			<div class="input-group">
				<i class="fas fa-envelope"></i> <input type="email" name="email"
					placeholder="Email Address" required>
			</div>
			<div class="input-group">
				<i class="fas fa-phone-alt"></i> <input type="tel" name="phone"
					placeholder="Phone Number" required>
			</div>
			<div class="input-group">
				<i class="fas fa-lock"></i> <input type="password" name="psw"
					placeholder="Password" required>
			</div>
			<div class="input-group">
				<i class="fas fa-lock"></i> <input type="password" name="conf_psw"
					placeholder="Confirm Password" required>
			</div>
			<button type="submit" name="submit">Register</button>
			<a href="login.jsp" class="signup-btn">Go Back Login Page</a>
		</form>

		<span id="errorMsg" style="color: red;"></span>
		
	</div>
	<script>
        document.addEventListener("DOMContentLoaded", function() {
            const form = document.querySelector("form");
            const errorMsg = document.getElementById("errorMsg");

            form.addEventListener("submit", function(event) {
                const name = form.querySelector('input[name="name"]');
                const username = form.querySelector('input[name="uid"]');
                const email = form.querySelector('input[name="email"]');
                const phone = form.querySelector('input[name="phone"]');
                const password = form.querySelector('input[name="psw"]');
                const confirmPassword = form.querySelector('input[name="conf_psw"]');

                if (!name.value.trim()) {
                    errorMsg.textContent = "Name cannot be empty or just whitespace!";
                    event.preventDefault();
                    return;
                }

                if (!username.value.trim() || username.value.length < 5) {
                    errorMsg.textContent = "Username must be at least 5 characters!";
                    event.preventDefault();
                    return;
                }

                const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
                if (!emailPattern.test(email.value)) {
                    errorMsg.textContent = "Invalid email format!";
                    event.preventDefault();
                    return;
                }

                const phonePattern = /^\d{10}$/;
                if (!phonePattern.test(phone.value)) {
                    errorMsg.textContent = "Invalid phone number format!";
                    event.preventDefault();
                    return;
                }

                const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
                if (!passwordPattern.test(password.value)) {
                    errorMsg.textContent = "Password must be at least 8 characters, contain one uppercase, one lowercase, one number, and one special character";
                    event.preventDefault();
                    return;
                }

                if (password.value !== confirmPassword.value) {
                    errorMsg.textContent = "Passwords do not match";
                    event.preventDefault();
                    return;
                }

                errorMsg.textContent = "";
            });
        });
    </script>
</body>

</html>
