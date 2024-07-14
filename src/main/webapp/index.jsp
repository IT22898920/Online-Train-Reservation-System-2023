<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script defer
	src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<!--fontawesome cdn link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- --bootstrap css cdn link--- -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">



<title>Insert title here</title>


<style>
@import
	url('https://fonts.googleapis.com/css2?family=Tiro+Kannada:ital@1&display=swap')
	;

:root {
	--primary: #0d6efd;
	--dark: #14140d;
	--body: #72726b;
	--box-shadow: 0 8px 22px reba(0, 0, 0, 0, 1);
}

body {
	font-family: sora, "sans-serif";
	line-height: 1.7;
	color: var(--body);
}

h1, h2, h3, h4, h5, h6
    .display-4 {
	color: var(--dark);
	font-weight: 700;
}

a {
	color: var(--dark);
	text-decoration: none;
}

img {
	width: 100%;
}

.hero {
	background-image:
		url("https://images.unsplash.com/photo-1566296314736-6eaac1ca0cb9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1528&q=80");
	background-position: center;
	background-size: cover;
	background-attachment: fixed;
	position: relative;
	z-index: 2;
}

.hero::after {
	content: --;
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
	background-color:;
	z-index: -1;
}

.avatar {
	border-radius: 50%;
}

section {
	padding-top: 120px;
	padding-bottom: 120px;
	font-size: large;
	font-weight: 400;
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.card-effect {
	box-shadow: var(--box-shadow);
	background-color: rgb(244, 240, 236);
	padding: 24px;
	transition: all 0.35s ease;
}

.card-effect:hover {
	box-shadow: #72726b;
	transform: translatey(5px);
}

.iconbox {
	width: 54px;
	height: 54px;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: var(--primary);
	color: #f3f2f2;
	font-size: 32px;
	border-radius: 100px;
}

.col-img {
	background-image:
		url("https://yt3.ggpht.com/-r-NV4YMr0Gc/AAAAAAAAAAI/AAAAAAAAAAA/sCZE_m9wXoU/s900-c-k-no-mo-rj-c0xffffff/photo.jpg");
	background-position: center;
	background-size: cover;
	min-height: 300px;
}

.albums {
	position: relative;
	z-index: 2;
	overflow: hidden;
}

.albums .overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(21, 20, 51, 0.8);
	padding: 30px;
	display: flex;
	align-items: flex-end;
	transition: all 0.4s ease;
	opacity: 0;
}

.albums:hover .overlay {
	opacity: 1;
}

.album:hover img {
	transform: scale(1.1);
}

.pricing i {
	font-size: 20px;
	color: var(--primary);
}

.pricing ul li {
	margin-top: 8px;
}

.members {
	position: relative;
	z-index: 2;
	overflow: hidden;
}

.members .overlay {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(21, 20, 51, 0.8);
	padding: 30px;
	display: flex;
	align-items: flex-end;
	transition: all 0.4s ease;
	opacity: 0;
}

.members:hover .overlay {
	opacity: 1;
}

.members:hover img {
	transform: scale(1.1);
}

#about {
	background-color: #f9f9f9; /* Light gray background */
	padding: 60px 0;
}

#about h2 {
	margin-bottom: 30px;
}

#about h4 {
	font-weight: bold;
	margin-bottom: 15px;
}

#about p {
	color: #666; 
}

#about .col-md-4 {
	padding: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
	background-color: #fff; 
	margin: 10px;
	border-radius: 10px; 
}

#schedule {
	background-color: #f9f9f9; 
	padding: 60px 0;
}

#schedule h2 {
	margin-bottom: 30px;
}

#schedule table {
	width: 100%;
	border-collapse: collapse;
}

#schedule th, #schedule td {
	border: 1px solid #ddd;
	padding: 8px 12px;
	text-align: left;
}

#schedule th {
	background-color: #4CAF50;
	color: white;
}

#schedule tr:hover {
	background-color: #f5f5f5;
}


@media ( max-width : 768px) {
	#about .col-md-4 {
		margin-bottom: 20px;
	}
}

#history {
	background-color: #e9ecef; 
	padding: 60px 0;
}

#history h2 {
	margin-bottom: 30px;
}

#history img {
	max-width: 100%;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

#history-content {
	margin-top: 30px;
}

#terms {
	background-color: #ffffff;
	padding: 60px 0;
}

#terms h2 {
	margin-bottom: 30px;
}

#terms-content {
	margin-top: 30px;
}

#terms-content ul {
	list-style-type: disc;
	padding-left: 40px;
}

#terms-content li {
	margin-bottom: 10px;
}

#contact {
	background-color: #f9f9f9; 
	padding: 60px 0;
}

#contact h2 {
	margin-bottom: 30px;
}

#contact-form {
	margin-top: 30px;
}

#contact-details {
	margin-top: 30px;
}

#contact-details i {
	font-size: 24px;
	color: #4CAF50;
	margin-right: 10px;
}

.contactUs {
	background: linear-gradient(90deg, #0e3959 0%, #0e3959 30%, #03a9f5 30%, #03a9f5
		100%);
	position: relative;
	width: 100%;
	padding: 40px 100px;
}

.contactUs .title {
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 2em;
}

.contactUs .title h2 {
	color: #fff;
	font-weight: 500;
}

.form {
	grid-area: form;
}

.info {
	grid-area: info;
}

.map {
	grid-area: map;
}

.contact {
	padding: 40px;
	background: #fff;
	box-shadow: 0 5px 35px rgba(0, 0, 0, 0.15);
}

.boxx {
	position: relative;
	display: grid;
	grid-template-columns: 2fr 1fr;
	grid-template-rows: 5fr 4fr;
	grid-template-areas: "form info" "form map";
	grid-gap: 20px;
	margin-top: 20px;
}

.formbox {
	position: relative;
	width: 100%;
}

.formbox .row50 {
	display: flex;
	gap: 20px;
}

.inputBox {
	display: flex;
	flex-direction: column;
	margin-bottom: 10px;
	width: 50%;
}

.formbox .row50 .inputBox {
	width: 100%;
}

.inputBox span {
	color: #18b7ff;
	margin-top: 10px;
	margin-bottom: 5px;
	font-weight: 500;
}

.inputBox input {
	padding: 10px;
	font-size: 1.1em;
	outline: none;
	border: 1px solid #333;
}

.inputBox textarea {
	padding: 10px;
	font-size: 1.1em;
	outline: none;
	border: 1px solid #333;
	resize: none;
	min-height: 220px;
	margin-bottom: 10px;
}

.inputBox input[type="submit"] {
	background: #ff578b;
	color: #fff;
	border: none;
	font-size: 1.1em;
}

.footer-top {
	padding-bottom: 100px;
	padding: 90px;
	background-image:
		url("https://img00.deviantart.net/3328/i/2015/053/c/7/wallpaper___linkin_park_thp_by_mctaylis-d8j1sev.jpg");
}

.footer-top a {
	color: var(--body);
}

.footer-top a:hover {
	color: #fff;
}

.footer-distributed {
	background: linear-gradient(#033747, #012733);
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
}

.footer-distributed .footer-l, .footer-distributed .footer-center,
	.footer-distributed .footer-r {
	display: inline-block;
	vertical-align: top;
}

/* Footer left */
.footer-distributed .footer-l {
	width: 40%;
}

/* The company logo */
.footer-distributed h3 {
	color: #ffffff;
	font: normal 36px 'Open Sans', cursive;
	margin: 0;
}

.footer-distributed h3 span {
	color: lightseagreen;
}

/* Footer links */
.footer-distributed .footer-links {
	color: #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a {
	display: inline-block;
	line-height: 1.8;
	font-weight: 400;
	text-decoration: none;
	color: inherit;
}

.footer-distributed .footer-c-n {
	color: #222;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */
.footer-distributed .footer-center {
	width: 35%;
}

.footer-distributed .footer-center i {
	background-color: #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.email {
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p {
	display: inline-block;
	color: #ffffff;
	font-weight: 400;
	vertical-align: middle;
	margin: 0;
}

.footer-distributed .footer-center p span {
	display: block;
	font-weight: normal;
	font-size: 14px;
	line-height: 2;
}

.footer-distributed .footer-center p a {
	color: lightseagreen;
	text-decoration: none;;
}

.footer-distributed .footer-links a:before {
	content: "|";
	font-weight: 300;
	font-size: 20px;
	left: 0;
	color: #fff;
	display: inline-block;
	padding-right: 5px;
}

.footer-distributed .footer-links .link-1:before {
	content: none;
}

/* Footer Right */
.footer-distributed .footer-r {
	width: 20%;
}

.footer-distributed .footer-company-about {
	line-height: 20px;
	color: #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}

.footer-distributed .footer-company-about span {
	display: block;
	color: #ffffff;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-distributed .footer-icons {
	margin-top: 25px;
}

.footer-distributed .footer-icons a {
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color: #33383b;
	border-radius: 2px;
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;
	margin-right: 3px;
	margin-bottom: 5px;
}
</style>






</head>
<body>


	<nav class="navbar navbar-expand-lg py-3  sticky-top bg-white">
		<div class="container">
			<a class="navbar-brand" href="#"
				style="font-size: 280%; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">BOOKME!</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#home">HOME</a></li>
					<li class="nav-item"><a class="nav-link" href="#about">ABOUT</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#Schedules">SCHEDULE</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#HISTORY">HISTORY</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#termsncon">T&C</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#contactus">Contact
							Us</a></li>
					<li class="nav-item"><a class="nav-link" href="Account.jsp"
						style="color: red;">PROFILE</a></li>


				</ul>


			</div>
		</div>
	</nav>


	<div class="hero vh-100 d-flex align-items-center" id="home">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 mx-auto text-center">
					<h1 class="display-5 text-white">Enjoy your journey</h1>
					<p class="text-white">online advance train reservation .</p>
					<a href="#" class="btn btn-primary"> Get Started</a> <a href="#"
						class="btn btn-outline-light">More</a>
				</div>
			</div>

		</div>
	</div>

	<section id="section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-8 mx-auto text-center">
					<h2 class=" text-primary">BOOKME!</h2>


					<p>GENERAL TERMS AND CONDITIONS APPLICABLE FOR USE OF THE
						ONLINE SEAT RESERVATION SERVICE OF SRI LANKA RAILWAYS.</p>

				</div>
			</div>
			<div class="row g-4 ">
				<div class="col-lg-4 col-sm-6">
					<div class="about card-effect">

						<div class="iconbox ">
							<i class='bx bx-detail'></i>
						</div>
						<h5 class="mt-4 mb-2">ABOUT</h5>
						<p>In the early days of the railways, the bulk of the freight
							was carried to the port of Colombo and as the port expanded, rail
							lines were laid to serve every pier.</p>
					</div>
				</div>

				<div class="col-lg-4 col-sm-6">
					<div class="about card-effect">

						<div class="iconbox ">
							<i class='bx bx-history'></i>
						</div>
						<h5 class="mt-4 mb-2">HISTORY</h5>
						<p>Rail was introduced in Sri Lanka in 1864 to transport
							coffee from plantations in the hill country district of Kandy to
							the port city of Colombo on its way to Europe and the world
							market. The coffee blight of 1871 destroyed many a fine
							plantation and tea replaced coffee</p>
					</div>
				</div>

				<div class="col-lg-4 col-sm-6">
					<div class="about card-effect">

						<div class="iconbox ">
							<i class='bx bx-award'></i>
						</div>
						<h5 class="mt-4 mb-2">terms & condition</h5>
						<p>Select the correct train for your journey. Fix a convenient
							date for both up & down journeys. Ensure that you have a thorough
							understanding of the rates applicable. .</p>
					</div>
				</div>
			</div>
	</section>

	<section>

		<form action="insert" method="post">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputEmail4">Name</label> <input type="text"
						class="form-control" id="inputname" name="name" placeholder="name">
				</div>
			</div>
			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					class="form-control" id="inputAddress" name="address"
					placeholder="1234 Main St">
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">Start from</label> <input type="text"
						class="form-control" name="Startfrom" id="Start">
				</div>

				<div class="form-group col-md-6">
					<label for="inputCity">Destination</label> <input type="text"
						class="form-control" name="Destination" id="End">
				</div>

			</div>

			<div class="form-group">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" id="gridCheck">
					<label class="form-check-label" for="gridCheck"> Check me
						out </label>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</section>
	<!-- ABOUT Section -->

	<section id="about">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12 text-center">
					<h2 class="text-primary" id="about">ABOUT BOOKME!</h2>
					<p>BOOKME! is Sri Lanka's premier online train reservation
						platform, designed to offer a seamless and user-friendly
						experience for travelers. Our platform is built with the modern
						traveler in mind, ensuring convenience, security, and reliability.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<h4>Convenience at Your Fingertips</h4>
					<p>With BOOKME!, you can book your train tickets from the
						comfort of your home or on the go. Our platform is accessible from
						any device, ensuring that you can book, modify, or cancel your
						reservations anytime, anywhere. Say goodbye to long queues and
						tedious booking processes. With a few clicks, your journey is set!</p>
				</div>
				<div class="col-4">
					<h4>Customer Support</h4>
					<p>Traveling can be unpredictable, and we understand that. Our
						dedicated customer support team is available 24/7 to assist you
						with any queries or issues. Whether you have questions about your
						booking, payment, or need travel advice, our team is here to help.
						We pride ourselves on our quick response times and
						solutions-driven approach.</p>
				</div>
				<div class="col-4">
					<h4>Safe and Secure Transactions</h4>
					<p>Your safety and security are our top priorities. We use
						state-of-the-art encryption technology to ensure that your
						personal and payment details remain confidential. Our platform
						undergoes regular security audits to ensure that your data is
						protected. Plus, with multiple payment options available, you can
						choose the one that suits you best, ensuring a smooth and secure
						transaction.</p>
				</div>
			</div>
		</div>
	</section>





	<!-- SCHEDULE Section -->
	<section id="schedule">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12 text-center">
					<h2 class="text-primary">TRAIN SCHEDULE</h2>
					<p>Below is the schedule for the upcoming trains. Please note
						that the timings are subject to change.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<table>
						<thead>
							<tr>
								<th>Train No.</th>
								<th>Departure Station</th>
								<th>Arrival Station</th>
								<th>Departure Time</th>
								<th>Arrival Time</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>101</td>
								<td>Colombo</td>
								<td>Kandy</td>
								<td>08:00 AM</td>
								<td>11:00 AM</td>
							</tr>
							<tr>
								<td>102</td>
								<td>Kandy</td>
								<td>Colombo</td>
								<td>02:00 PM</td>
								<td>05:00 PM</td>
							</tr>
							<tr>
								<td>103</td>
								<td>Colombo</td>
								<td>Galle</td>
								<td>09:30 AM</td>
								<td>12:30 PM</td>
							</tr>
							<tr>
								<td>104</td>
								<td>Galle</td>
								<td>Colombo</td>
								<td>03:15 PM</td>
								<td>06:15 PM</td>
							</tr>
							<tr>
								<td>105</td>
								<td>Colombo</td>
								<td>Jaffna</td>
								<td>07:00 AM</td>
								<td>12:00 PM</td>
							</tr>
							<tr>
								<td>106</td>
								<td>Jaffna</td>
								<td>Colombo</td>
								<td>01:00 PM</td>
								<td>06:00 PM</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>

	<!-- HISTORY Section -->
	<section id="history">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12 text-center">
					<h2 class="text-primary" id="HISTORY">HISTORY OF SRI LANKA
						RAILWAYS</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<img src="path_to_a_historical_image.jpg"
						alt="Historical Image of Sri Lanka Railways">
				</div>
				<div class="col-md-6" id="history-content">
					<p>Rail transport in Sri Lanka has a rich history dating back
						to the colonial era. The first railway line was opened in 1864,
						connecting Colombo to Ambepussa. This marked the beginning of a
						new era of transportation in the country, facilitating the
						movement of goods and people.</p>
					<p>Over the years, the railway network expanded, connecting
						major cities and towns. The introduction of steam locomotives
						played a pivotal role in the economic and social development of
						the nation. The picturesque train journeys, especially through the
						hill country, became iconic and attracted travelers from around
						the world.</p>
					<p>In the modern era, Sri Lanka Railways has continued to
						evolve, introducing new technologies and services to cater to the
						changing needs of the public. Today, it stands as a testament to
						the country's rich heritage and its vision for the future.</p>
				</div>
			</div>
		</div>
	</section>

	<!-- T&C Section -->
	<section id="terms">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12 text-center">
					<h2 class="text-primary" id="termsncon">TERMS & CONDITIONS</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-12" id="terms-content">
					<p>By using the online seat reservation service of Sri Lanka
						Railways, you agree to the following terms and conditions:</p>
					<ul>
						<li>Reservations are subject to seat availability and are
							provided on a first-come, first-served basis.</li>
						<li>Passengers are required to provide accurate personal and
							payment information during the booking process.</li>
						<li>Reservations are confirmed only upon successful payment
							and receipt of a confirmation email or SMS.</li>
						<li>Cancellations and modifications are subject to the
							cancellation policy outlined during the booking process.</li>
						<li>Passengers are required to carry a valid ID proof along
							with the ticket during the journey.</li>
						<li>Sri Lanka Railways reserves the right to change the train
							schedule without prior notice.</li>
						<li>Any misuse or fraudulent bookings will result in
							permanent blacklisting from the online reservation system.</li>
						<li>By making a reservation, passengers agree to adhere to
							all safety and conduct guidelines set by Sri Lanka Railways.</li>
					</ul>
					<p>These terms and conditions are subject to change without
						notice. It is the responsibility of the passenger to stay updated
						with the latest terms and conditions.</p>
				</div>
			</div>
		</div>
	</section>

	<section>

		<div class="contactUs" id="contactus">
			<div class="title">
				<h2>Contact Us</h2>
			</div>
			<div class="boxx">
				<div class="contact form">
					<h3>Send a Message</h3>
					<form>
						<div class="formbox">
							<div class="row50">
								<div class="inputBox">
									<span>First Name</span> <input type="text"
										placeholder="Frist Name">
								</div>
								<div class="inputBox">
									<span>Last Name</span> <input type="text"
										placeholder="Last Name">
								</div>
							</div>
							<div class="row50">
								<div class="inputBox">
									<span>Email</span> <input type="text"
										placeholder="email@email.com">
								</div>
								<div class="inputBox">
									<span>Mobile</span> <input type="text"
										placeholder="+94776543210">
								</div>
							</div>
							<div class="row50">
								<div class="inputBox">
									<span>Message</span>
									<textarea placeholder="Write your message here..."></textarea>
								</div>
							</div>
							<div class="row50">
								<div class="inputBox">
									<input type="submit" value="Send">
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="contact info">
					<h3>Contact Info</h3>
					<div class="infoBox">
						<div>
							<span><image src="img/12.svg" width="20" height="20" /></span>
							<p>
								444 Colombo<br /> Sri Lanka
							</p>
						</div>
						<div>
							<span><image src="img/13.svg" width="20" height="20" /></span> <a
								href="mailto:kosmo@company.com">railway@gmail.com</a>
						</div>
						<div>
							<span><image src="img/14.svg" width="20" height="20" /></span> <a
								href="tel:+94779020959">+94779020959</a>
						</div>
					</div>
				</div>
				<div class="contact map">
					<iframe src="https://www.google.com/maps/embed?pb=..." width="600"
						height="450" style="border: 0;" allowfullscreen="" loading="lazy"
						referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
			</div>
		</div>
	</section>

	<footer class="footer-distributed">

		<div class="footer-l">

			<h3>
				RailWay<span> logo</span>
			</h3>

			<p class="footer-links">
				<a href="" class="link-1">Home</a> <a href="">Privacy and policy</a>

				<a href="">Terms and Condition</a> <a href="">Faq</a> <a href="">Contact
					Us</a>
			</p>

			<p class="footer-c-n">Railway © 2023</p>
		</div>

		<div class="footer-center">

			<div>
				<i class="addres"></i>
				<p>
					<span>444 Kirulapana</span> Colombo, Sri Lanka
				</p>
			</div>

			<div>
				<i class="phone"></i>
				<p>+</p>
				94 779020959
			</div>

			<div>
				<i class="email"></i>
				<p>
					<a href="railway@gmail.com">railway@gmail.com`</a>
				</p>
			</div>

		</div>

		<div class="footer-r">

			<p class="footer-company-about">
				<span>About the company</span> In the early days of the railways,
				the bulk of the freight was carried to the port of Colombo and as
				the port expanded, rail lines were laid to serve every pier.
			</p>

			<div class="footer-icons">

				<a
					href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiK5qaCsPf6AhWmcGwGHRfMCpQQFnoECBIQAQ&url=https%3A%2F%2Fwww.instagram.com%2Fcapellau%2F%3Fhl%3Den&usg=AOvVaw3LIQPdrRdi-My3NXlgUxIC"><image
						src="insta.jpeg" width="20" height="20" /><i
					class="fa fa-instagram"></i></a> <a
					href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwj3iYzQw4P7AhW3SmwGHSJUAz0QFnoECBYQAQ&url=https%3A%2F%2Ftwitter.com%2Fcapellau&usg=AOvVaw1EYA48gsgmCHIb9sdwLNaF"><image
						src="Twiter.jpeg" width="20" height="20" /><i
					class="fa fa-twitter"></i></a> <a
					href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiOlrumsPf6AhXUTmwGHbSRBNgQFnoECBAQAQ&url=https%3A%2F%2Fwww.facebook.com%2FCapellaUniversity%2F&usg=AOvVaw3V_WhKWLHszJmygSkbcH16"><image
						src="fb.jpeg" width="20" height="20" /><i class="fa fa-facebook"></i></a>
				<a
					href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjR5ayAxIP7AhX9R2wGHbSAAJoQFnoECAkQAQ&url=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCzICfNoGvU6qRQjl9xwZT7Q&usg=AOvVaw3Q4gOQMIob9DvFBrVNwpIk"><image
						src="youtube.jpeg" width="20" height="20" /><i
					class="fa fa-youtube"></i></a>

			</div>

		</div>
	</footer>


	<!-- Add Bootstrap JavaScript and jQuery scripts here -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>