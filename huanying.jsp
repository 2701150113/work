<%@ page language="java" contentType="text/html; charset=utf-8"

	pageEncoding="utf-8"%>

<%@page import="java.util.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>nihao</title>
<style type="text/css">
.li {

	position: fixed;

	top: 35%;

	left: 50%;



}

</style>

</head>

<%

	String userName = (String) session.getAttribute("userName");

%>

<body>

	<%

		String password = request.getParameter("password");

		

		try {

			Scanner sc = new Scanner(new File("message.txt"));

			while (sc.hasNextLine()) {

				String line = sc.nextLine();

				String ss[] = line.split("\\s+");

				if (ss[0].equals(userName)) {

					userName = ss[2];

					break;

				}

			}

			sc.close();

		} catch (Exception e) {

		}

	%>

	

	<div class="li">

		<font size="10" color="blue">Hi:<%=userName%></font> <br>
		<font size="5" color="green">当前时间：<%=new Date().toLocaleString()%></font>

</div>

</body>

</html>
