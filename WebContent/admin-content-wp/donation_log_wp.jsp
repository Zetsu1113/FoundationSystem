<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.information.personal.UserDonationBean" %>
<%@ page import = "com.information.personal.PersonalBean" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%
NumberFormat formatter = new DecimalFormat("#0.00");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Admin Panel</title>
	<link href="../CSS/bootstrap.css" rel="stylesheet" />
    <link href="../CSS/main.css" rel="stylesheet" />
    <link href="../CSS/bootstrap-formhelpers.css" rel="stylesheet" media='screen' />
</head>

<body data-spy="scroll" data-target="#navbarCollapse">
	
	<jsp:include page="../navBar.jsp" />  

		
    <div class='container-fluid'>
    	<div class='container'>
        	<div class='row'>
            	<div id='contain'>
                	<br /><br /><br /><br /><br />
                	<div class='row'>
                    	<div class='col-md-3 col-xs-12'>
                        	<table class='table table-hover table-bordered table-responsive text-center admin-links'>
                            	<tr height='250px'>
                                	<td style='padding: 40px 0 20px 0;'>
                                    	<p>Welcome, <strong>${cookie.username.value}</strong></p>
                                        <p>Total Donations: <strong><% out.print(formatter.format(session.getAttribute("total"))); %></strong></p>
										<br />
                                    </td>
                                </tr>
                                <tr>
                                	<td class='active'>
                                    	<a href="<%= request.getContextPath() %>/informationReturn"><h3>DONATION LOG</h3></a>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	<a href="<%= request.getContextPath() %>/UserReturn"><h3>USERS</h3></a>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	<a href='pages_editor_wp.jsp'><h3>PAGES</h3></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class='col-md-9'>
                        	<div class='row'>
                            	<form method = "post" action="<%= request.getContextPath() %>/informationReturn" class='form-horizontal'>
									<div class="col-md-6 form-group">
                                    	<div class='row'>
                                            <label for="username" class="col-md-3 control-label">Username</label>
                                            <div class="col-md-9">
                                                <input type="text" class="form-control" id="username" name="username" placeholder="User Name">
                                            </div>
                                        </div>
                                       	<div class='row'>
                                            <label for="amount" class="col-md-3 control-label">Amount</label>
                                            <div class="col-md-9">
                                                <input type="amount" class="form-control" id="amount" name="amount" placeholder="Amount">
                                            </div>
                                        </div>
 									</div>
                                    <div class='col-md-6 form-group'>
                                    	<div class='row'>
                                        	<label for="fromDate" class="col-md-3 control-label">From Date</label>
                                        	<div class='col-md-9'>
												<div class="bfh-datepicker" data-date="today"  name="fromDate" id='fromDate' data-name="fromDate" data-format="y-m-d" style='background-color:white;'></div>
                                        </div>
                                            </div>
                                        <div class='row'>
                                        	<label for="toDate" class="col-md-3 control-label">To Date</label>
                                        	<div class='col-md-9'>
												<div class="bfh-datepicker" data-date="today"  name="toDate" id='toDate' data-name="toDate" data-format="y-m-d" style='background-color:white;'></div>
                                            </div>
                                        </div>
                                        <div class='row'>
                                        	<div class='col-md-3 col-md-offset-8'>
													<button type="submit" class="btn btn-default">Submit Query</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            
                            <div class='row'>
                                <div class='col-xs-12 center-block'>
                                <div class='wrapFlow_admin'>
                                    <table class='table table-hover table-bordered table-responsive table-condensed'>
                                        <tr>
                                            <th class='text-center'>Username</th>
                                            <th class='text-center'>Name</th>
                                            <th class='text-center'>Donation ID</th>
                                            <th class='text-center'>Date</th>
                                            <th class='text-center'>Donated To</th>
                                            <th class='text-center'>Amount</th>
                                        </tr>

<!-- retrieves the details from the beans (retrieved from the ReturnInfo servlet) -->                                        
                                        <%
                                        ArrayList<UserDonationBean> u = (ArrayList<UserDonationBean>)session.getAttribute("query");
                                        ArrayList<PersonalBean> p = (ArrayList<PersonalBean>)session.getAttribute("names");
                                        if (u != null)
	                                        for (int i = 0; i < u.size(); i++)
	                                        {
	                                        	out.println("<tr>");
		                                        out.println("<td>" + u.get(i).getUsername() + "</td>");
		                                        out.println("<td>" + p.get(i).getLastName() + ", " + p.get(i).getFirstName() + "</td>");
		                                        out.println("<td>" + u.get(i).getDonationID() + "</td>");
		                                        out.println("<td>" + u.get(i).getDateDonated() + "</td>");
		                                        out.println("<td>" + "TBD" + "</td>");
		                                        out.println("<td>" + formatter.format(u.get(i).getAmount()) + "</td>");
		                                        out.println("</tr>");
	                                        }
                                        %>
                                    </table>
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
