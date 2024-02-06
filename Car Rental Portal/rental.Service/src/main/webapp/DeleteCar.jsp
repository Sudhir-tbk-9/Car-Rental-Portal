<%@page import="retal.steer.dao.CarDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>X : Deletion</title>
<link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

<style>

body{
background-image: url("c4.jpg");
position: relative;
justify-content: center;
align-items: center;
background-repeat: no-repeat;
background-size: contain;
backdrop-filter : blur(5px);
}

</style>
<script>
	function showMessage(message) {
		alert(message);
		window.location.href = "DisplayCar.jsp";

	}
</script>
</head>
<body>
		<%
	String idParameter = request.getParameter("id");
	if (idParameter != null && !idParameter.isEmpty()) {
		try {
			int idToDelete = Integer.parseInt(idParameter);
			CarDao dao = new CarDao();
			int deleteResult = dao.delCarDao(idToDelete);
	%>

	<h2>Car Record Deletion : Status :~ </h2>
	<%
	if (deleteResult > 0) {
	%>
	<script>
     	showMessage("Car with ID <%= idToDelete %> has been successfully deleted.");
   </script>
	<%
	} else {
	%>
	 <script>
          showMessage("Failed to delete Car with ID <%= idToDelete %>. Please check the ID.");
     </script>
	<%
	}
	%>

	<%
	} catch (NumberFormatException e) {
	%>
	<script>
		showMessage("Error: Invalid ID format. Please provide a valid numeric ID.");
	</script>
	<%
	}
	} else {
	%>
	<script>
    	showMessage("Error: Missing ID parameter. Please provide a valid ID.");
    </script>
	<%
	}
	%>
	
</body>
</html>