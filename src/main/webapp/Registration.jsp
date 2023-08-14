<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<body class="bg-gray-100 h-screen flex justify-center items-center">

	<%
		//String error = (String)request.getAttribute("error");
		String firstNameError = (String) request.getAttribute("firstNameError");
		String emailError = (String) request.getAttribute("emailError");
		String passwordError = (String) request.getAttribute("passwordError");
	%>

	<div class="w-96 bg-white p-8 rounded shadow-md">
		<h2 class="text-2xl font-semibold mb-4">Sign Up</h2>
		<form action="RegistrationServlet" method="post">
			<div class="mb-4">
				<label for="username"
					class="block text-sm font-medium text-gray-700">FirstName</label> <input
					type="text" id="username" name="firstName"
					class="mt-1 p-2 w-full border rounded-md focus:ring focus:ring-indigo-300"
					placeholder="Enter your username">
				<span class="text-red-500"><%=firstNameError==null?"":firstNameError%></span>
			</div>
			<div class="mb-4">
				<label for="email" class="block text-sm font-medium text-gray-700">Email</label>
				<input type="email" id="email" name="email"
					class="mt-1 p-2 w-full border rounded-md focus:ring focus:ring-indigo-300"
					placeholder="Enter your email">
				<span class="text-red-500"><%=emailError==null?"":emailError%></span>
			</div>
			<div class="mb-4">
				<label for="password"
					class="block text-sm font-medium text-gray-700">Password</label> <input
					type="password" id="password" name="password"
					class="mt-1 p-2 w-full border rounded-md focus:ring focus:ring-indigo-300"
					placeholder="Enter your password">
				<span class="text-red-500"><%=passwordError==null?"":passwordError%></span>
			</div>
			<button type="submit"
				class="w-full bg-indigo-500 text-white p-2 rounded-md hover:bg-indigo-600">Sign
				Up</button>
		</form>
		<p class="mt-4 text-sm text-gray-600">
			Already have an account? <a href="#" class="text-indigo-500">Log
				in</a>
		</p>

		<%-- 		<%=//error == null ? "" : error%>
 --%>
	</div>
</body>
</html>
