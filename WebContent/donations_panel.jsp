<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session = "true" %>
<%@ page import = "com.information.personal.UserDonationBean" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%
NumberFormat formatter = new DecimalFormat("#0.00");
%>
<jsp:useBean id="pbean" scope="session" class="com.information.personal.PersonalBean"/>
<jsp:useBean id="adbean" scope="session" class="com.information.personal.ADBean"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Donate</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />

</head>

<body data-spy="scroll" data-target="#navbarCollapse">
	
	<jsp:include page="navBar.jsp" />  

	<br /><br /><br />
    
    <div class='container-fluid'>
    	<div class='container'>
        	<div class='row'>
            	<br/>
           		<br/>
				<div class='row'>
                	<div class='row'>
                    <div class='col-xs-10 col-xs-offset-1'>
                    	<div class='row text-center bg-info hidden-xs hidden-sm'>
							<div class='col-md-2 text-left'>
                            	<h4>Name: </h4>
                                <h4>Used ID: </h4>
                                <h4>Contact Number: </h4>
                                <h4>Mailing Address: </h4>
                                <h4>E-Mail Address: </h4>
                            </div>
                            <div class='col-md-5 text-left'>
                            	<h4>${pbean.lastName }, ${pbean.firstName } ${pbean.middleName}</h4>
                                <h4> ${cookie.username.value} </h4>
                                <h4>${pbean.phoneNumber }</h4>
                                <h4>${pbean.address }</h4>
                                <h4>${pbean.email }</h4>
                            </div>
                             <div class='col-md-3 text-left'>
                            	<h4>Joined On: </h4>
                                <h4>Donation Count: </h4>
                                <h4>Total Donations: $</h4>
                            </div>
                            <div class='col-md-2 text-right'>
                            	<h4>${adbean.dateJoined }</h4>
                                <h4>${adbean.donationsCount }</h4>
                                <h4><% out.println(formatter.format(adbean.getTotalDonations())); %></h4>
                            </div>
                        </div>
                        <!-- For Small Screens -->
                        <div class='row text-center bg-success hidden-md hidden-lg'>
							<div class='col-md-12'>
                            	<h4>Name: </h4>
                                <h6>${pbean.lastName }, ${pbean.firstName } ${pbean.middleName}</h6>
                                <h4>Used ID: </h4>
                                <h6>${cookie.username.value }</h6>
                                <h4>Contact Number: </h4>
                                <h6>${pbean.phoneNumber }</h6>
                                <h4>Mailing Address: </h4>
                                <h6>${pbean.address }</h6>
                                <h4>E-Mail Address: </h4>
                                <h6>${pbean.email }</h6>
                            </div>                            
                        </div>
                        <div class='row text-center bg-success hidden-md hidden-lg'>
                        	<div class='col-md-12'>
                            	<h4>Joined On: </h4>
                                <h6>${adbean.dateJoined }</h6>
                                <h4>Donation Count: </h4>
                                <h6>${adbean.donationsCount }</h6>
                                <h4>Total Donations: $</h4>
                                <h6><% out.println(formatter.format(adbean.getTotalDonations())); %></h6>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <hr />
                <div class='row'>
                	<div class='col-xs-12 text-center'>
						<h4>Where your previous donations went:</h4>
                    </div>
                </div>
                <div class='row'>
                	<div class='col-xs-12 center-block'>
                    <div class='wrapFlow'>
                    	<table class='table table-hover table-bordered table-responsive'>
                        	<tr>
								<th class='text-center'>Donation ID</th>
                                <th class='text-center'>Date</th>
                                <th class='text-center'>Donated To</th>
                                <th class='text-center'>Amount</th>
                            </tr>
<!-- retrieves the information obtained from the ReturnInfo servlet -->                            
                            <%
                            	ArrayList<UserDonationBean> u = (ArrayList<UserDonationBean>)session.getAttribute("udbean");
                            	for (int i = 0; i < u.size(); i++)
                            	{
                            		out.println("<tr>");
                            		out.println("<td>" + u.get(i).getDonationID() + "</td>");
                            		out.println("<td>" + u.get(i).getDateDonated() + "</td>");
                            		out.println("<td>" + "TBD" + "</td>");
                            		out.println("<td>" + u.get(i).getAmount() + "</td>");
                            		out.println("</tr>");
                            	}
                            %>
                        </table>
                        </div>
                    </div>
                </div>
			</div>
            	<br style='margin-top: 3vh;' />
            <div class='row'>
            	<div class='row'>
                	<div class='col-xs-12'>
                    	<p class='text-info text-center'>
                        	The table above shows all donation transactions you have made from the beginning. Be sure to track where your donations went
                        </p>
                    </div>
                </div>
                	<br style='margin-top: 3vh;' />
                <div class='row'>
                	<div class='col-md-7'>
                    	<img src='MEDIA/IMAGES/727x519.png' class='img-responsive'/>
                    </div>
                    <div class='col-md-5'>
                    	<img src='MEDIA/IMAGES/727x519.png' class='img-responsive'/>
                        <p class='text-center'>
                        	The images show the statatistics of the frequency and amount of donation you have made
                        </p>
                    </div>
                </div>	
            </div>
  		</div>
    </div>
    <br style='margin-top: 3vh;' />
    
   	<jsp:include page="footerBar.html" />  

</body>
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src="JS/jquery.viewportchecker.js"></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>
    <script src="JS/jquery.nicescroll.js"></script>


</html>