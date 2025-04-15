<!DOCTYPE html>
<%@page import="bean.customerDetailsBean"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
body {
	background-image: url('./images/img.jpg');
	font-size: 1.3em;
	background-size: cover;
	background-repeat: no-repeat;
	opacity: 0.8;
}

.info {
	height: 70%;
	width: 50%;
	background-color: aliceblue;
	margin: 0 auto;
	padding: 20px;
	margin-top: 20vh;
}

h1 {
	text-align: center;
	color: #344a72
}

#button {
	width: 200px;
	height: 35px;
	margin-top: 20px;
	margin-left: 80px;
	border: none;
	border-radius: 10px;
	background-color: #344a72;
	color: white;
	font-size: 18px;
}


#button:hover {
	cursor: pointer;
	background-color: blue;
}
</style>
</head>
<body>
	<%
	HttpSession hs = request.getSession(false);
	customerDetailsBean tempCb = (customerDetailsBean) hs.getAttribute("tempCb");
	if (tempCb != null) {
	%>
	<div class="info">
		<form action="payment.jsp">
			<h1>Ticket Details</h1>
			<table>
				<tr>
					<td><label>Name :</label></td>
					<td><input type="text" value="<%=tempCb.getFname() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Email ID :</label></td>
					<td><input type="text" value="<%=tempCb.getMid() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Ticket ID :</label></td>
					<td><input type="text" value="<%=tempCb.getTicketID() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Contact :</label></td>
					<td><input type="number" value="<%=tempCb.getContact() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Destination From :</label></td>
					<td><input type="text" value="<%=tempCb.getDestinationFrom() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Destination To :</label></td>
					<td><input type="text" value="<%=tempCb.getDestinationTO() %>" readonly></td>
				</tr>
				<tr>
					<td><label> Class :</label></td>
					<td><input type="text" value="<%=tempCb.getClassType() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Date :</label></td>
					<td><input type="text" value="<%=tempCb.getDate() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Seat Number :</label></td>
					<td><input type="text" value="<%=tempCb.getSeat() %>" readonly></td>
				</tr>
				<tr>
					<td><label>Ticket Price:</label></td>
					<td><input type="text" value="<%=tempCb.getPrice() %>" readonly></td>
				</tr>
			</table>
				<input type="submit" value="Proceed to pay" id="button">
		</form>
	</div>
		<%
	} else {
	out.print("temperory CB is null");
	request.getRequestDispatcher("login.jsp").include(request, response);
	}
	%>
	}
</body>
</html>