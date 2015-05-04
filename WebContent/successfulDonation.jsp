<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.information.personal.UserDonationBean" %>
<%@ page import = "java.util.ArrayList" %>
<jsp:useBean id="pbean" scope="session" class="com.information.personal.PersonalBean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>People Helping People Foundation - Donate</title>
	<link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/main.css" rel="stylesheet" />

</head>

<body data-spy="scroll" data-target=".navbar-fixed-top" id='top'>
	
	<jsp:include page="navBar.jsp" />  

    <div class='container-fluid bg2_' >
    	<div class='container'>
        	<div class='row vwContent text-container_3'>
            <br class='hidden-xs hidden-sm' />
            <br class='hidden-xs hidden-sm' />
				<div class='row'>
                	<div class='col-xs-12'>
                    	<h1 class='text-center hidden-xs hidden-sm'><em>Donation successful! You may track your donations on your <span  class='defLinks '><strong><a href='donations_panel.html' class="transition">Donations</a></strong></span> panel</em></h1>
 						<h3 class='text-center hidden-md hidden-lg'><em>Donation successful! You may track your donations on your <span  class='defLinks '><strong><a href='donations_panel.html' class="transition">Donations</a></strong></span> panel</em></h3>
                    </div>
                </div>
                <hr />
            	<div class='row'>
                    <div class='col-xs-8 col-xs-offset-2'>
                    	<div class='row text-center bg-success hidden-xs hidden-sm'>
							<div class='col-md-offset-1 col-md-5 text-left'>
                            	<h3>Donation ID:</h3>
                                <h3>Donor:</h3>
                                <h3>Time:</h3>
                            </div>
      						<%
							ArrayList<UserDonationBean> u = (ArrayList<UserDonationBean>)session.getAttribute("udbean");
	
							UserDonationBean last = u.get(u.size() - 1);
							%>                      
                            <div class='col-md-5 text-right'>
                            	<h3><%= last.getDonationID() %></h3>
                                <h3>${pbean.lastName}, ${pbean.firstName } ${pbean.middleName} </h3>
                                <h3><%= last.getDateDonated() %></h3>
                            </div>
                        </div>
                        <!-- For Small Screens -->
                        <div class='row text-center bg-success hidden-md hidden-lg'>
							<div class='col-xs-6 text-left'>
                            	<h6>Donation ID:</h6>
                                <h6>Donor:</h6>
                                <h6>Time:</h6>
                            </div>
                            
                            <div class='col-xs-6 text-right'>
                            	<h6><%= last.getDonationID() %></h6>
                                <h6>${pbean.lastName}, ${pbean.firstName } ${pbean.middleName} </h6>
                                <h6><%= last.getDateDonated() %></h6>
                            </div>
                        </div>
                    </div>
                </div>
            	<hr />
                <div class='row hidden'>
                	<div class='col-xs-12'>
                    	<p>
            	Maecenas vulputate malesuada ligula, at maximus orci consequat in. Nam consectetur vulputate velit, vel pretium metus ultricies sed. Vivamus urna metus, ultrices a est at, vehicula molestie diam. Nullam varius commodo eros a porttitor. Etiam congue eu purus eget finibus. Nam augue orci, feugiat vehicula porttitor eu, lobortis quis ante. Curabitur luctus neque vitae enim viverra sodales a eget lacus. Morbi ante orci, vehicula eu nibh sit amet, eleifend placerat quam. Etiam et bibendum nulla. Cras nec metus sapien. Sed ligula libero, aliquet a consequat sit amet, mattis eu libero. Quisque at dolor sodales nibh feugiat faucibus ornare et felis. Nulla molestie porta lacus pretium tempor. Duis scelerisque erat vel rhoncus laoreet. Nam enim ante, posuere nec tincidunt a, molestie a nisi. Aliquam volutpat odio eros, at pulvinar lectus hendrerit in. 
            			</p>
                    </div>
                </div>
            </div>
  		</div>
    </div>
    
  	<jsp:include page="footerBar.html" />  

</body>
	<script src='JS/jquery.js' type='text/javascript' /></script>
	<script src="JS/jquery.viewportchecker.js"></script>
    <script src='JS/bootstrap.js' type='text/javascript' /></script>
    <script src='JS/custom_.js' type='text/javascript' /></script>
    <script src="JS/jquery.nicescroll.js"></script>
	<script src="JS/bootstrap-formhelpers-min.js"></script>
</html>