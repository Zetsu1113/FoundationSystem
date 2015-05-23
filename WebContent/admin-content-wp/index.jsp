<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!--  for invalid user log-ins -->    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>People Helping People Foundation - Admin</title>
	<link href="../CSS/bootstrap.css" rel="stylesheet" />
	<link href="../CSS/bootstrap-theme.css" rel="stylesheet" />
    <link href="../CSS/main.css" rel="stylesheet" />
    <link href="../CSS/bootstrap-formhelpers.css" rel="stylesheet" media='screen' />
</head>
<body>
	<div class='container'>
		<div class='vcenter' id='admin_login'>
			<div class='row'>
				<div class='col-md-12'>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h1 class="panel-title">Admin Control Panel</h1>
						</div>
						<div class="panel-body">
							<% 
								Cookie ck[] = request.getCookies();
								if (!(ck.length == 1)) {
							%>
							<div class="alert alert-danger" role="alert"><strong>Oops!</strong> Invalid Admin Username/Password</div>
							<% } %>
							<form class='form-horizontal' method="post" action="<%=request.getContextPath() %>/ConfirmInformation">
								<div class='form-group'>
									<label for="username" class="col-md-2 control-label">Username</label>
									<div class='col-md-10'>
										<input type="text" class="form-control" id="username" name="username" placeholder="User Name">
									</div>
								</div>
								<div class='form-group'>
									<label for="password" class="col-md-2 control-label">Password</label>
									<div class='col-md-10'>
										<input type="password" class="form-control" id="password" name="password" placeholder="Password">
									</div>
								</div>					
								<div class='form-group'>
									<div class='col-md-4 col-md-offset-8'>
										<input type="submit" class="form-control" id="loginB" name="loginB" value='Login!'>
									</div>
								</div>
							</form> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
	<script src='../JS/jquery.js' type='text/javascript' /></script>
    <script src='../JS/bootstrap-formhelpers-min.js'></script>
    <script src='../JS/bootstrap.js' type='text/javascript' /></script>
    <script src='../JS/custom_.js' type='text/javascript' /></script>
</html>
