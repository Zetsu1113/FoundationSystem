<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "com.information.personal.UserDonationBean" %>

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
                                        <p>Last Active on: <strong>&lt;Date&gt;</strong></p>
                                        <p>New User: <strong>&lt;Username&gt;</strong></p>
                                        <p>Total Donations: <strong><% out.print(session.getAttribute("total")); %></strong></p>
										<br />
                                        <p>You have <strong>&lt;int&gt;</strong> new site messages</p>
                                    </td>
                                </tr>
                                <tr>
                                	<td class='active'>
                                    	<a href='#'><h3>DONATION LOG</h3></a>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	<a href='users_wp.jsp'><h3>USERS</h3></a>
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
                            	<form class='form-horizontal'>
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
                                                <input type="amount" class="form-control" id="amount" placeholder="Amount">
                                            </div>
                                        </div>
 									</div>
                                    <div class='col-md-6 form-group'>
                                    	<div class='row'>
                                        	<label for="fromDate" class="col-md-3 control-label">From Date</label>
                                        	<div class='col-md-9'>
												<div class="bfh-datepicker" data-date="today"  id='fromDate' data-name="fromDate" data-format="y-m-d" style='background-color:white;'></div>
                                        </div>
                                            </div>
                                        </div>
                                        <div class='row'>
                                        	<label for="toDate" class="col-md-3 control-label">To Date</label>
                                        	<div class='col-md-9'>
												<div class="bfh-datepicker" data-date="today"  id='toDate' data-name="toDate" data-format="y-m-d" style='background-color:white;'></div>
                                            </div>
                                        </div>
                                        <div class='row'>
                                        	<div class='col-md-3 col-md-offset-8'>
													<button type="submit" class="btn btn-default">Submit Query</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
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
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[USERNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
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
