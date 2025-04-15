<!DOCTYPE html>
<%@page import="bean.customerDetailsBean"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-image: url('./images/img.jpg');
	font-size: 1.3em;
	background-size: cover;
	background-repeat: no-repeat;
	opacity: 0.8;
	background-color: #21cdd3;
	font-family: Arial, Helvetica, sans-serif;
	background-repeat: no-repeat;
}

.wrapper {
	background-color: #fff;
	width: 650px;
	padding: 25px;
	margin: 25px auto 0;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
	border-radius: 10px;
	text-align: center;
}

.wrapper h2 {
	background-color: #fff;
	color: #21cdd3;
	font-size: 25px;
	padding: 18px;
	margin-bottom: 8px;
	text-align: center;
	border: 1px solid skyblue;
}

.wrapper h4 {
	padding-bottom: 5px;
	color: #21cdd3;
}

.input_group {
	margin-bottom: 8px;
	width: 100%;
	position: relative;
	display: flex;
	flex-direction: row;
	padding: 5px 0;
}

.input_box {
	width: 100%;
	margin-right: 12px;
	position: relative;
}

.input_box:last-child {
	margin-right: 0;
}

.input_box .name {
	padding: 14px 14px 14px 50px;
	width: 100%;
	background-color: #fcfcfc;
	border: 1px solid #0003;
	outline: none;
	letter-spacing: 1px;
	font-size: 18px;
	transition: 0.3px;
	border-radius: 3px;
	color: #333;
}

.dob {
	width: 30%;
	padding: 10px;
	font-size: 18px;
	text-align: center;
	background-color: #fcfcfc;
	transition: 0.3s;
	outline: none;
	border: 1px solid #c0bfbf;
	border-right: 3px;
}

.radio {
	display: none;
}

.input_box label {
	width: 50%;
	padding: 7px;
	background-color: #fcfcfc;
	display: inline-block;
	float: left;
	text-align: center;
	border: 1px solid #c0bfbf;
}

.input_box label:first-of-type {
	border-top-left-radius: 5px;
	border-bottom-right-radius: 5px;
	border-right: none;
}

.input_box label:last-of-type {
	border-top-left-radius: 3px;
	border-bottom-right-radius: 3px;
}

.radio:checked+label {
	background-color: #21cdd3;
	color: #fff;
	transition: 0.5s;
}

.input_box button {
	width: 100%;
	background-color: #21cdd3;
	color: #fff;
	border: none;
	padding: 5px;
	border-right: 4px;
	font-size: 30px;
	transition: all 0.3s ease;
	border-radius: 8px;
}

.input_box button:hover {
	cursor: pointer;
	background-color: #05b1a3;
}
</style>
</head>
<body>
	<%
	HttpSession hs = request.getSession(false);
	customerDetailsBean tempCb = (customerDetailsBean) hs.getAttribute("tempCb");
	if (tempCb == null) {
		out.print("temp cb is null this msg from payment page");
		request.getRequestDispatcher("ticketbookform.jsp");
	} else {
	%>
	<div class="wrapper">
		<!--ACC-->
		<h2>Fill Information To Pay</h2>
		<form action="ticketBook" method="post">
			<h4>Account</h4>
			<div class="input_group">
				<div class="input_box">
					<input type="text" placeholder="Name"
						value="<%=tempCb.getFname()%> " required class="name">
				</div>
				<div class="input_box">
					<input type="text" placeholder="Name On Card" required class="name">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="email" placeholder="Email Address" required
						class="name" value="<%=tempCb.getMid()%>">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="text" placeholder="Address" required class="name">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="text" placeholder="City" required class="name">
				</div>
			</div>
			<!--DOB-->
			<div class="input_group">
				<div class="input_box">
					<h4>Date Of Birth</h4>
					<input type="text" placeholder="DD" required class="dob"> <input
						type="text" placeholder="MM" required class="dob"> <input
						type="text" placeholder="YYYY" required class="dob">
				</div>
				<div class="input_box">
					<h4>Gender</h4>
					<input class="radio" type="radio" name="gender" required id="b1"
						checked> <label for="b1">Male</label> <input class="radio"
						type="radio" name="gender" required id="b2"> <label
						for="b2">Female</label>
				</div>
			</div>
			<!--Payment-->
			<div class="input_group">
				<div class="input_box">
					<h4>Payment Details</h4>
					<input class="radio" type="radio" name="Pay" required id="bc1"
						checked> <label for="bc1">Credit Card</label> <input
						class="radio" type="radio" name="Pay" required id="bc2"> <label
						for="bc2">BHIM UPI</label>
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="tel" class="name" name="cNo"
						placeholder="Card Number 1111-2222-3333-4444" required>
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="tel" class="name" name="cvv"
						placeholder="Card CVV XXX " required>
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="number" class="name" name="em" placeholder="Exp Month"
						required>
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="number" class="name" name="ey" placeholder="Exp Year"
						required>
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="number" class="name" placeholder="Enter Amount"
						value="<%=tempCb.getPrice()%>" required readonly="readonly">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<button type="submit">Pay Now</button>
				</div>
			</div>
		</form>
	</div>
	<%
	}
	%>
	<a href="logout"> cancel payment</a>
</body>
</html>