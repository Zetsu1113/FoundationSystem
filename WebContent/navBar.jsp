<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	Cookie ck[] = request.getCookies();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    	<div class='container-fluid'>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">People Helping People</a>
		</div>
       <div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav">
               <% if(request.getRequestURI().equals(request.getContextPath()+"/index.jsp") || request.getRequestURI().equals(request.getContextPath()+"/")){ %>
						<li class="active"><a href="#top">Home</a></li>
                		<li><a href="#about">About</a></li>
                		<li><a href="#contactUs">Contact Us</a></li>
               <% }else{ %>
               			
                		<li><a href="<%=request.getContextPath()%>/index.jsp" class="active transition">Home</a></li>
                		<li><a href="<%=request.getContextPath()%>/index.jsp#about" class="active transition">About</a></li>
                		<li><a href="<%=request.getContextPath()%>/index.jsp#contactUs" class="active transition">Contact Us</a></li>
               <%} %>
                        	
                
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">Projects <b class="caret"></b></a>
                    <ul role="menu" class="dropdown-menu">
						<% if(request.getRequestURI().equals(request.getContextPath()+"/Projects/project_1.jsp")){ %>
                        	<li class='active'><a href="#">Pre Membership and Orientation Seminar</a></li>
						<%}else { %>
                        	<li><a href="<%=request.getContextPath()%>/Projects/project_1.jsp" class="transition">Pre Membership and Orientation Seminar</a></li>
						<%} %>
						<% if(request.getRequestURI().equals(request.getContextPath()+"/Projects/project_2.jsp")){ %>
                        	<li class='active'><a href="#">Adopted Families' Tambo Making Project</a></li>
						<%}else { %>
                        	<li><a href="<%=request.getContextPath()%>/Projects/project_2.jsp" class="transition">Adopted Families' Tambo Making Project</a></li>
						<%} %>
						<% if(request.getRequestURI().equals(request.getContextPath()+"/Projects/project_3.jsp")){ %>
                        	<li class='active'><a href="#">Project 3</a></li>
						<%}else { %>
                        	<li><a href="<%=request.getContextPath()%>/Projects/project_3.jsp" class="transition">Project 3</a></li>
						<%} %>
                    </ul>
                </li>
				<% if(request.getRequestURI().equals(request.getContextPath()+"/donate.jsp")){ %>
					<li class="active"><a href="#">Donate</a></li>
				<%}else { %>
					<li><a href="<%=request.getContextPath()%>/donate.jsp" class="transition">Donate</a></li>
				<%} %>
            </ul>
            <% if (ck == null || ck.length == 1) {%>
            <!-- LOGGED OFF -->
            <ul class="nav navbar-nav navbar-right " id='loginSpace'>
                <li id='bLogin' onclick='logn()'><a href='javascript:void(0)'>Login</a></li>
                <li id='aOr' class='hidden-xs hidden-sm' style='margin-left: -20px;margin-right: -20px;'><a href='javascript:void(0)'>or</a></li>
				<li id='sgnUp'><a href='<%=request.getContextPath()%>/sign_up.jsp' class="transition">Sign Up!</a></li>
                <li id='aLogin' class='hidden'>
                	<div class='row'>
						<div class='col-xs-9 col-xs-offset-1'>
                            <form method="post" action="ConfirmInformation">
                              <div class="form-group">
                                <input type="text" class="form-control loginInput_1" id="username" placeholder="User ID" name="username">
                                <input type="password" class="form-control loginInput_1" id="password" placeholder="Password" name="password">
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
            <% } else if (ck[3].getValue().equals("2") || ck[3].getValue().equals("1")){  %>
            <ul class="nav navbar-nav navbar-right">
            <!-- NAKALOGIN NA ADMIN USER -->
            	<li id='loginSpace_admin'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>${cookie.username.value }</span>!</p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='<%=request.getContextPath()%>/donations_panel.jsp' class="transition">Donations</a></span> | <span id='navLink'><a href='<%=request.getContextPath() %>/admin-content-wp/' class="transition">ACP</a></span> | <span id='navLink'><a href='<%=request.getContextPath() %>/Logout'>Log Out!</span></a></p>
                            </div>
                        </div>
                	</div>
                </li>
            </ul>
            <!-- NAKALOGIN NA NORMAL USER -->
            <% } else { %>
            <ul class="nav navbar-nav navbar-right">
                <li id='loginSpace_user'>
                	<div class='container-fluid'>
                        <div class='row'>
                            <div class='col-xs-12'>
                                <p style='margin-top: 1px;'><em>Welcome back,</em> <span id='navLink'>${cookie.username.value }</span>!</p>
                                <p style='margin-top: -15px;margin-bottom: inherit;'><span id='navLink'><a href='<%=request.getContextPath()%>/donations_panel.jsp' class="transition">Your Donations</a></span> | <span id='navLink'><a href='<%=request.getContextPath()%>/Logout'>Log Out!</a></span></p>
                            </div>
                        </div>
                	</div>
                </li>
            </ul>
            <% }%>
		</div>
        </div>
    </nav>