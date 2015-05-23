<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error 404 - Page Not Found!</title>
	<link href="<%=request.getContextPath()%>/CSS/bootstrap.css" rel="stylesheet" />
	<link href="<%=request.getContextPath()%>/CSS/bootstrap-theme.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/CSS/main.css" rel="stylesheet" />
</head>
<body>
	<div class='container'>
			<div class='vcenter'>
				<div class='row'>
					<div class='col-md-12'>
						<div class="panel panel-danger" id='welcome_'>
								<div class="panel-heading">
								<h1 class="panel-title"><span class='glyphicon glyphicon-exclamation-sign' aria-hidden="true"></span>&nbsp;Oops!</h1>
								</div>
							<div class="panel-body">
								<p class="text-center">It looks like <strong><%=request.getAttribute("javax.servlet.forward.request_uri")%></strong> does not exist</p>
							   	<p class="text-center">If you believe this to be an error, feel free to <a href='<%=request.getContextPath()%>/index.jsp#contact_us' class='transition'>contact the administrator</a></p>									
							</div>
							<div class="panel-footer"><p class="text-right"><a href='<%=request.getContextPath()%>/index.jsp' class='transition'>Click here to return to the index page.</a></p></div>
						</div>						
					</div>
				</div>
			</div>
		</div>
</body>
</html>