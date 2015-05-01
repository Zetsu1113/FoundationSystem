<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                                    	<p>Welcome, <strong>&lt;admin&gt;</strong></p>
                                        <p>Last Active on: <strong>&lt;Date&gt;</strong></p>
                                        <p>New User: <strong>&lt;Username&gt;</strong></p>
                                        <p>Total Donations: <strong>&lt;value&gt;</strong></p>
										<br />
                                        <p>You have <strong>&lt;int&gt;</strong> new site messages</p>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	<a href='donation_log_wp.jsp'><h3>DONATION LOG</h3></a>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	<a href='users_wp.jsp'><h3>USERS</h3></a>
                                    </td>
                                </tr>
                                <tr>
                                	<td class='active'>
                                    	<a href='#'><h3>PAGES</h3></a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        
                        <div class='col-md-9'>
                        	<div class='row'>
									<div class="col-xs-12 col-md-8">            
                                    	<select class='form-control' id='selector'>
											<option>../index.jsp</option>
                                            <option>../donate.jsp</option>
                                            <option>../donations_panel.jsp</option>
                                            <option>../sign_up.jsp</option>
                                            <option>../successfulDonation.jsp</option>
                                            <option>../Projects/project_1.jsp</option>
                                            <option>../Projects/project_2.jsp</option>
                                            <option>../Projects/project_3.jsp</option>
										</select>
                                   	</div>
                                    <div class="col-md-2 col-xs-12">
                                     	<button type="button" class="btn btn-default" onclick="setVal(getSelBox('selector'))">OPEN FILE</button>
                               		</div>
                                    <div class="col-md-2 col-xs-12">
                                    	<button type="button" class="btn btn-default">UPDATE FILE</button>
                                  	</div>
							</div>
                            <br />
                            <div class='row'>
                                <div class='col-xs-12'>
                                    <pre id="editor"></pre>

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
	<script src="../src-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
    <script src="../src-noconflict/ext-language_tools.js"></script>
    
    <script>
	
		var generatedSource = new XMLSerializer().serializeToString(document);
        // trigger extension
		ace.require("ace/ext/language_tools");
        var editor = ace.edit("editor");
		editor.setValue(); // or session.setValue
        editor.session.setMode("ace/mode/html");
        editor.setTheme("ace/theme/dreamweaver");
        // enable autocompletion and snippets
        editor.setOptions({
            enableBasicAutocompletion: true,
            enableSnippets: true,
            enableLiveAutocompletion: false
        });
    </script>

</html>