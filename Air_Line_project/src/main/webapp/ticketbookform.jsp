<!DOCTYPE html>
<%@page import="bean.customerDetailsBean"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Your Ticket</title>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Poppins&display=swap");

body, html {
	margin: 0;
	font-family: "poppins", sans-serif;
}

label {
	color: #4caf50;
}

.input[type="test"], select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	display: inline-block;
	box-sizing: border-box;
}

.background {
	width: 100vw;
	height: 100vh;
	background-image: url('./images/travel.jpeg');
	background-size: cover;
	background-position: center;
	display: flex;
	align-items: center;
	justify-self: center;
}

.booking-form {
	background-color: rgba(14, 13, 13, 0.7);
	padding: 20px;
	border-radius: 10px;
	max-width: 500px;
	width: 50%;
	margin: 0 auto;
}

.booking-form h2 {
	text-align: center;
	color: #4caf50;
	font-size: 2em;
}

.booking-form form {
	display: flex;
	flex-direction: column;
}

.booking-form input {
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.buttons {
	display: flex;
	gap: 20px;
	margin-left: 10px;
}

.booking-form button {
	margin-top: 10px;
	padding: 10px;
	width: 30%;
	background-color: #4caf50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.booking-form button:hover {
	background-color: #387c3c;
}

a {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<div class="background">
		<div class="booking-form">
			<h2>Fill Details</h2>

			<%
			HttpSession hs = request.getSession(false);
			customerDetailsBean cb = (customerDetailsBean) hs.getAttribute("cb");
			if (cb == null) {
			%>
			<jsp:forward page="login.jsp" />
			<%
			} else {
			%>


			<form action="roughTicket" method="post">
				<label for="name">Name:</label> <input type="text" name="name"
					id="name" value="<%=cb.getFname()%>" required> <label
					for="contact">Contact:</label> <input type="number" name="contact"
					id="contact" value="<%=cb.getContact()%>" required> <label
					for="email">Email:</label> <input type="email" name="mid"
					id="email" value="<%=cb.getMid()%>" required readonly="readonly">

				<label for="destination to">Destination To:</label> <select
					id="destination to" name="dTo">
					<option value="destination to">Select Your Destination</option>
					<option value="delhi">Delhi</option>
					<option value="mumbai">Mumbai</option>
					<option value="hyderabad">Hyderabad</option>
					<option value="bangalore">Bangalore</option>
				</select> <label for="destination From">Destination From:</label> <select
					id="destination to" name="dFrom">
					<option value="destination to">Select Your Destination</option>
					<option value="delhi">Delhi</option>
					<option value="mumbai">Mumbai</option>
					<option value="hyderabad">Hyderabad</option>
					<option value="bangalore">Bangalore</option>
				</select> <label for="departure-date">Departure-date:</label> <input
					type="date" name="date" id="departure-date" required> <label
					for="time">Time:</label> <select id="time" name="time">
					<option>Select Your Time</option>
					<option>8:00AM</option>
					<option>2:00PM</option>
					<option>6:00PM</option>
					<option>11:30PM</option>
				</select> <label for="class">Class:</label> <select id="class"
					name="class_type">
					<option>Select Your Seat Class</option>
					<option>Business Class</option>
					<option>Economy Class</option>

				</select>


				<div class="buttons">
					<button type="submit">Book Now</button>
					<button type="reset">Clear Form</button>
					<button type="submit">View Ticket</button>
				</div>
			</form>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>