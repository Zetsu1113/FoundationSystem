<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="refresh" content="3;URL=login.jsp">
<title>Sign Up - Successful</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
	<link href="CSS/bootstrap-theme.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />
</head>
<body>
	<div class='container'>
		<div class='vcenter'>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-success" id='welcome_'>
							<div class="panel-heading">
							<h4 class="panel-title">Successful Successful!</h4>
							</div>
						<div class="panel-body">
							<p class="text-center">Sign Up Process successful!</p>
						    <p class="text-center">You will now be taken back to the Login Page</p>
						</div>
						<div class="panel-footer"><p class="text-right"><a href='<%=request.getContextPath() %>/login.jsp'>Click here if you don't want to wait any longer.</a></p></div>
					</div>					
				</div>
			</div>
		</div>
	</div>
</body>
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src="JS/jquery.viewportchecker.js"></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>

</html>