<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="showdetails.jsp" method="post">
	<label for="source">Source</label>
		<input list="source" id="date" name="source" />
		<datalist id="source">
			<option value="Hyderabad">
			<option value="Delhi">
			<option value="Kolkata">
			<option value="Mumbai">
			<option value="Bangalore">
		</datalist>
		</br> </br> <label for="destination">Destination </label> <input
			list="destination" id="date" name="destination" />
		<datalist id="destination">
			<option value="Hyderabad">
			<option value="Delhi">
			<option value="Kolkata">
			<option value="Mumbai">
			<option value="Bangalore">
		</datalist>
		</br> </br>
		<h2>Enter your details</h2>
		<%
		int count = Integer.parseInt(request.getParameter("no of persons"));
		for (int i = 1; i <= count; i++) {
		%>
		Passenger Name <%=i %> : <input type="text" name="fullname"> </br> </br> 
		Aadhar UID <%=i %> : <input type="text" name="uid"></br> </br>
		Phone Number <%=i %> : <input type="text" name="phone"> </br> </br> 
		Age <%=i %> : <input type="text" name="age"></br></br>
		-----------------------------------------------------------------------</br></br>
		<%
		}
		%>
		<input type="submit" value="Book Ticket"></br></br>
	</form>
</body>
</html>