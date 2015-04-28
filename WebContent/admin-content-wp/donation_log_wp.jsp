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
	
	<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
    	<div class='container-fluid'>

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="../index.html" class="navbar-brand">People Helping People</a>
        </div>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="../index.html">Home</a></li>
                <li><a href="../index.html#about">About</a></li>
                <li><a href="../index.html#contactUs">Contact Us</a></li>
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">Projects <b class="caret"></b></a>
                    <ul role="menu" class="dropdown-menu">
                        <li><a href="../PROJECTS/project_1.html">Project 1</a></li>
                        <li><a href="../PROJECTS/project_2.html">Project 2</a></li>
                        <li><a href="../PROJECTS/project_3.html">Project 3</a></li>
                        <!--<li class="divider"></li>
                        <li><a href="#">Trash</a></li>-->
                    </ul>
                </li>
                <li><a href="../donate.html">Donate</a></li>
            </ul>
            <!--<form role="search" class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" placeholder="Search" class="form-control">
                </div>
            </form>-->
             <ul class="nav navbar-nav navbar-right">
            	<li id='loginSpace_admin' class='hidden'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>Username</span>!</p>
                                <p style='margin-top: -15px;'><em>Last active on</em> <span id='navLink'>date</span></p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='../donations_panel.html'>Donations</a></span> | <span id='navLink'><a href='../donation_log_wp.html'>ACP</a></span> | <span id='navLink'>Log Out!</span></p>
                            </div>
                        </div>
                	</div>
                </li>
                <li id='loginSpace_user' class='hidden'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>Username</span>!</p>
                                <p style='margin-top: -15px;'><em>Last active on</em> <span id='navLink'>date</span></p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='../donations_panel.html'>Your Donations</a></span> | <span id='navLink'>Log Out!</span></p>
                            </div>
                        </div>
                	</div>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right " id='loginSpace'>
                <li id='bLogin' onclick='logn()'><a href='javascript:void(0)'>Login</a></li>
                <li id='aOr' class='hidden-xs hidden-sm' style='margin-left: -20px;margin-right: -20px;'><a href='javascript:void(0)'>or</a></li>
                <li id='sgnUp'><a href='../sign_up.html'>Sign Up!</a></li>
                <li id='aLogin' class='hidden'>
                
                	<div class='row'>
						<div class='col-xs-9 col-xs-offset-1'>
                            <form onSubmit='return showPanel()'>
                              <div class="form-group">
                                <input type="userID" class="form-control" id="loginInput_1" placeholder="User ID">
                                <input type="password" class="form-control" id="loginInput_2" placeholder="Password">
                              </div>
                        </div>
                        <div class='col-xs-1'>
                              <div class="form-group">
                                    <button type="submit" class="btn btn-default">Submit</button>
                              </div>
                            </form>
                        </div>
                    </div>
                    
                </li>
            </ul>
        </div>
        </div>
    </nav> 
		
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
                                    	<a href='users_wp.html'><h3>USERS</h3></a>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	<a href='pages_editor_wp.html'><h3>PAGES</h3></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div class='col-md-9'>
                        	<div class='row'>
                            	<form class='form-horizontal'>
									<div class="col-md-6 form-group">
                                    	<div class='row'>
                                            <label for="surname" class="col-md-3 control-label">Surname</label>
                                            <div class="col-md-9">
                                                <input type="name" class="form-control" id="surname" placeholder="Surname">
                                            </div>
                                        </div>
                                        <div class='row'>
                                            <label for="name" class="col-md-3 control-label">Name</label>
                                            <div class="col-md-9">
                                                <input type="name" class="form-control" id="name" placeholder="Name">
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
   	                                            <div id="fromDate" data-name="fromDate" class='bfh-datepicker'></div>

                                            </div>
                                        </div>
                                        <div class='row'>
                                        	<label for="toDate" class="col-md-3 control-label">To Date</label>
                                        	<div class='col-md-9'>
   	                                            <div id="toDate" data-name="toDate" class='bfh-datepicker'></div>

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
                                            <th class='text-center'>Surname</th>
                                            <th class='text-center'>Name</th>
                                            <th class='text-center'>Donation ID</th>
                                            <th class='text-center'>Date</th>
                                            <th class='text-center'>Donated To</th>
                                            <th class='text-center'>Amount</th>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
                                            <td>[NAME]</td>
                                            <td>[DONATION_ID]</td>
                                            <td>[DATE]</td>
                                            <td>[DONATED_TO]</td>
                                            <td>[AMOUNT]</td>
                                        </tr>
                                        <tr>
                                            <td>[SURNAME]</td>
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

<div id="footer">
  <div class="container">
    <p class="text-muted"><em>Web User Interfaced designed by <a href="http://www.facebook.com/whenlegendbegins">Kyle Cancio</a></em></p>
  </div>
</div>

</body>
	<script src='../JS/jquery.js' type='text/javascript' /></script>
    <script src='../JS/bootstrap-formhelpers-min.js'></script>
	<script src="../JS/jquery.viewportchecker.js"></script>
    <script src='../JS/bootstrap.js' type='text/javascript' /></script>
    <script src='../JS/custom_.js' type='text/javascript' /></script>


</html>
