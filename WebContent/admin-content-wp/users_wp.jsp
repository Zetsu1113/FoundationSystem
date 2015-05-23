<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.information.personal.ADBean" %>
<%@ page import="com.information.personal.PersonalBean" %>

<!-- used for viewing all the users of the site -->
<!-- for formatting the total donations to the foundation -->
<%
NumberFormat formatter = new DecimalFormat("#0.00");
	Cookie ck[] = request.getCookies();
	if (ck.length == 1)
		response.sendRedirect("index.jsp");
	else if (ck[3].getValue().equals("3"))
		response.sendRedirect("index.jsp");
	else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Admin Panel</title>
<link href="../CSS/bootstrap.css" rel="stylesheet" />
<link href="../CSS/bootstrap-theme.css" rel="stylesheet" />
<link href="../CSS/main.css" rel="stylesheet" />
<link href="../CSS/bootstrap-formhelpers.css" rel="stylesheet"
	media='screen' />
</head>

<body data-spy="scroll" data-target="#navbarCollapse">

	<jsp:include page="../navBar.jsp" />


	<div class='container-fluid'>
		<div class='container'>
			<div class='row'>
				<div id='contain'>
					<br />
					<br />
					<br />
					<br />
					<br />
					<div class='row'>
						<div class='col-md-3 col-xs-12'>
							<table
								class='table table-hover table-bordered table-responsive text-center admin-links'>
								<tr height='250px'>
									<td style='padding: 40px 0 20px 0;'>
										<p>
											Welcome, <strong>${cookie.username.value }</strong>
										</p>
										<p>
											Total Donations: <strong><% out.print(formatter.format(session.getAttribute("total"))); %></strong>
										</p> <br />
									</td>
								</tr>
								<tr>
									<td><a href="<%= request.getContextPath() %>/informationReturn"><h3>DONATION
												LOG</h3></a></td>
								</tr>
								<tr>
									<td class='active'><a href="<%= request.getContextPath() %>/UserReturn"><h3>USERS</h3></a></td>
								</tr>
								<tr>
									<td><a href='pages_editor_wp.jsp'><h3>PAGES</h3></a></td>
								</tr>
							</table>
						</div>
						<div class='col-md-9'>
							<div class='row'>
								<form class='form-horizontal' action="<%= request.getContextPath() %>/UserReturn" method="post">
									<div class="col-md-6 form-group">
										<div class='row'>
											<label for="username" class="col-md-3 control-label">Username</label>
											<div class="col-md-9">
												<input type="text" class="form-control" id="username"
													name="username" placeholder="User Name">
											</div>
										</div>
									</div>
									<div class='col-md-6 form-group'>
										<div class='row'>
											<label for="fromDate" class="col-md-3 control-label">From
												Date</label>
											<div class='col-md-9'>
												<div class="bfh-datepicker" data-date="today" id='fromDate'
													data-name="fromDate" data-format="y-m-d"
													style='background-color: white;'></div>
											</div>
										</div>
									<div class='row'>
										<label for="toDate" class="col-md-3 control-label">To
											Date</label>
										<div class='col-md-9'>
											<div class="bfh-datepicker" data-date="today" id='toDate'
												data-name="toDate" data-format="y-m-d"
												style='background-color: white;'></div>
										</div>
										</div>
										<div class='row'>
											<div class='col-md-3 col-md-offset-8'>
												<button type="submit" class="btn btn-default">Submit
													Query</button>
											</div>
										</div>
										
									</div>
									</div>
								</form>
							<div class='row'>
								<div class='col-xs-12 center-block'>
									<div class='wrapFlow_admin' style='padding: 5px;'>
<!-- retrieves the information obtained from the ReturnUsers servlet -->
							<%
                            	ArrayList<ADBean> a = (ArrayList<ADBean>)session.getAttribute("Uad");
                                ArrayList<PersonalBean> p = (ArrayList<PersonalBean>)session.getAttribute("Upb");
                                if (a != null)
	                            for (int i = 0; i < a.size(); i++)
	                            {
									if (i % 3 == 0)
									{
							%>
										<div class='row'>
											<ul class='list-inline'>		
							<% 		} 
							%>
												<div class='col-md-4'>
													<li class='list-group-item' id='user_box'>
														<ul class='list-unstyled'>
												
							<%			
															String username = p.get(i).getUsername();
															out.println("<li>Name: <strong>" + p.get(i).getLastName() + ", " + p.get(i).getFirstName() + "</strong></li>");
															out.println("<li>Username: <strong>" + username + "</strong></li>");
															out.println("<li>Joined Date: <strong>" + a.get(i).getDateJoined() + "</strong></li>");
															out.println("<li>Total Donations: <strong>" + a.get(i).getTotalDonations() + "</strong></li>");
															out.println("<li>Email: <strong>" + p.get(i).getEmail() + "</strong></li>"); 
							%>
															<br />
															<form method="post" action="<%= request.getContextPath() %>/Delete">
																<input name="username" type="hidden" value="<%= username %>"/>
																<button type="submit" class="btn btn-default">Delete</button>
															</form>
														</ul>
													</li>
												</div>
							<%
									if (i % 3 == 2)
									{	
							%>
												</ul>
											</div>
							<%		}
	                            }
                            %>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	<jsp:include page="../footerBar.html" />


</body>
<script src='../JS/jquery.js' type='text/javascript' /></script>
<script src='../JS/bootstrap-formhelpers-min.js'></script>
<script src="../JS/jquery.viewportchecker.js"></script>
<script src='../JS/bootstrap.js' type='text/javascript' /></script>
<script src='../JS/custom_.js' type='text/javascript' /></script>


</html>
<% } %>