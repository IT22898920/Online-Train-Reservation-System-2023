<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="com.oop.service.PassengerDBUtil" %>
<%@page import = "java.util.List" %>
<%@page import="com.oop.model.Passenger" %>


<% 
List<Passenger> pasDetails = (List <Passenger>) session.getAttribute("pasDetails"); 
if(pasDetails == null || pasDetails.isEmpty()) {
    // Redirect to login page or show an error
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Passenger Account Profile</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link rel="stylesheet" href="Account_css.css">

</head>

<button onclick="downloadPDF()" class="btn btn-primary no-print"
	style="position: fixed; top: 10px; right: 10px; z-index: 1000; border-radius: 25px; padding: 10px 20px; font-size: 16px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); transition: transform 0.2s;">Download
	Profile as PDF</button>

<body class="bg-light d-flex justify-content-center align-items-center"
	style="height: 100vh;">

	<div class="card"
		style="border-radius: 50%; overflow: hidden; max-width: 2000px; margin: 0 auto; padding: 120px;">
		<!-- ... existing code ... -->
		<div class="card-header text-center">

			<div class="profile-image-container">
				<img id="profileImage" src="a.jpg" alt="Profile Image"
					class="profile-image"> <input type="file" id="imageUploader"
					accept="image/*" style="display: none;">
				<button id="uploadTrigger" class="btn btn-sm btn-primary no-print">Change
					Image</button>
				<div id="loadingSpinner" style="display: none;">Loading...</div>
			</div>


			<i class="fas fa-user fa-5x mb-2"></i>
			<h5>
				<br/><b>Passenger Account Profile</b>
			</h5>
		</div>

		

		<div class="card-body text-center">
			<form method="post">
				<c:forEach var="pas" items="${pasDetails}">

					<c:set var="id" value="${pas.id}" />
					<c:set var="name" value="${pas.name}" />
					<c:set var="email" value="${pas.email}" />
					<c:set var="phone" value="${pas.phone}" />
					<c:set var="username" value="${pas.username}" />
					<c:set var="password" value="${pas.password}" />

					<div class="form-group">
						<label name="id">Passenger ID:</label> ${pas.id}
					</div>
					<div class="form-group">
						<label name="name">Name:</label> ${pas.name}
					</div>
					<div class="form-group">
						<label name="email">Email:</label> ${pas.email}
					</div>
					<div class="form-group">
						<label name="phone">Phone Number:</label> ${pas.phone}
					</div>
					<div class="form-group">
						<label name="username">Username:</label> ${pas.username}
					</div>
					<div class="form-group">
						<label name="password">Password:</label>
						<c:forEach begin="1" end="${fn:length(pas.password)}" var="i">
                        *
                    </c:forEach>
					</div>
				</c:forEach>
				<c:url value="updatepassenger.jsp" var="pasupdate">
					<c:param name="id" value="${id}" />
					<c:param name="name" value="${name}" />
					<c:param name="email" value="${email}" />
					<c:param name="phone" value="${phone}" />
					<c:param name="username" value="${username}" />
					<c:param name="Password" value="${password}" />
				</c:url>
				<a href="${pasupdate}"> <!-- This button should not appear in the PDF -->
					<button type="button" name="update"
						class="btn btn-warning no-print">Account Update</button>
				</a>
				<c:url value="Delete.jsp" var="pasdelete">
					<c:param name="id" value="${id}" />
					<c:param name="name" value="${name}" />
					<c:param name="email" value="${email}" />
					<c:param name="phone" value="${phone}" />
					<c:param name="username" value="${username}" />
					<c:param name="Password" value="${password}" />
				</c:url>
				<a href="${pasdelete}"> <!-- This button should not appear in the PDF -->
					<button type="button" class="btn btn-danger no-print">Delete
						Account</button>
				</a>
			</form>
		</div>
		<div class="text-center mb-3">
			<!-- This button should not appear in the PDF -->
			<button type="button" class="btn btn-secondary no-print">Logout</button>
		</div>
	</div>
	<!-- Bootstrap JS and jQuery -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
	document.getElementById('uploadTrigger').addEventListener('click', function() {
	    document.getElementById('imageUploader').click();
	});

	document.getElementById('imageUploader').addEventListener('change', function() {
	    const file = this.files[0];
	    if (file) {
	        const reader = new FileReader();
	        reader.onloadstart = function() {
	            document.getElementById('loadingSpinner').style.display = 'block';
	        }
	        reader.onload = function(e) {
	            resizeImage(e.target.result, function(resizedDataUrl) {
	                document.getElementById('profileImage').src = resizedDataUrl;
	                document.getElementById('loadingSpinner').style.display = 'none';
	                
	                // Enlarge the profile image container
	                const profileImageContainer = document.querySelector('.profile-image-container');
	                profileImageContainer.classList.add('enlarged');
	            });
	        }
	        reader.onerror = function() {
	            alert('Error loading the image.');
	            document.getElementById('loadingSpinner').style.display = 'none';
	        }
	        reader.readAsDataURL(file);
	    }
	});

	
	    function resizeImage(dataUrl, callback) {
	        const MAX_WIDTH = 300;  // Set the maximum width for the output image
	        const MAX_HEIGHT = 200; // Set the maximum height for the output image
	        const img = new Image();
	        img.src = dataUrl;
	        img.onload = function() {
	            const canvas = document.createElement('canvas');
	            let width = img.width;
	            let height = img.height;
	
	            if (width > height) {
	                if (width > MAX_WIDTH) {
	                    height *= MAX_WIDTH / width;
	                    width = MAX_WIDTH;
	                }
	            } else {
	                if (height > MAX_HEIGHT) {
	                    width *= MAX_HEIGHT / height;
	                    height = MAX_HEIGHT;
	                }
	            }
	
	            canvas.width = width;
	            canvas.height = height;
	            const ctx = canvas.getContext('2d');
	            ctx.drawImage(img, 0, 0, width, height);
	
	            const resizedDataUrl = canvas.toDataURL('image/jpeg', 0.8);  // Adjust quality if needed
	            callback(resizedDataUrl);
	        }
	    }
	    
	    function downloadPDF() {
	        var element = document.querySelector('.card'); 
	        var opt = {
	            // ... (rest of your options)
	            html2canvas: { 
	                scale: 2,
	                onclone: function(document) {
	                    // Hide elements with the 'no-print' class in the cloned document before rendering
	                    var elems = document.querySelectorAll('.no-print');
	                    elems.forEach(el => {
	                        el.style.display = 'none';
	                    });
	                }
	            },
	            // ... (rest of your options)
	        };
	        html2pdf().from(element).set(opt).save();
	    }
	
    </script>

</body>

</html>
