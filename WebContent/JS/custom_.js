// JavaScript Document

// Page Transition

$(window).scroll(function() {
    if ($(".navbar").offset().top > 5) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});


$(document).ready(function() {
			$("body").css("display", "none");
		 
			$("body").fadeIn(2000);
		 
			$("a.transition").click(function(event){
				event.preventDefault();
				linkLocation = this.href;
				$("body").fadeOut(1000, redirectPage);

			});
				 
			function redirectPage() {
				window.location = linkLocation;
			}
		});

//LIGHTBOX

 $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
}); 


//HOVER DROP DOWN
    $(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
            });
    });
    
//CUSTOM SCROLL

$(document).ready(

		  function() { 
		
			$("html").niceScroll({cursorwidth: 10,cursoropacitymax: 0.8, cursorborder: 000, scrollspeed: 100, zindex: 9999, bouncescroll: true});
		
		  }
		
		);

//sticke
$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
  } else {
    $('nav').removeClass('shrink');
  }
});

//login

function logn(){
	document.getElementById("bLogin").className += "hidden";
	aor();
	document.getElementById("aOr").className += "hidden";
	document.getElementById("sgnUp").className += "hidden";
	document.getElementById("aLogin").className =
   	document.getElementById("aLogin").className.replace
      ( /(?:^|\s)hidden(?!\S)/g , '' );
};

function aor(){
	document.getElementById("aOr").className =
   	document.getElementById("aOr").className.replace
      ( /(?:^|\s)hidden-sm(?!\S)/g , '' );
	document.getElementById("aOr").className =
   	document.getElementById("aOr").className.replace
      ( /(?:^|\s)hidden-xs(?!\S)/g , '' );

};

function showPanel(x){
	document.getElementById("loginSpace").className += "hidden";
	document.getElementById("loginSpace_admin").className =
	document.getElementById("loginSpace_admin").className.replace
      ( /(?:^|\s)hidden(?!\S)/g , '' );
	document.getElementById("loginSpace_admin").className += "visible"; 
	  
	if(x!=null){
		adjustDonate();	
	}
	  return false;
};

function adjustDonate(){
	document.getElementById("donate_unlog").className += "hidden";
	document.getElementById("donate_log").className =
	document.getElementById("donate_log").className.replace
      ( /(?:^|\s)hidden(?!\S)/g , '' );
};

//SMOOTH-SCROLL
	$(function() {
	  $('a[href*=#]:not([href=#myCarousel])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top
	        }, 1000);
	        return false;
	      }
	    }
	  });
	});



// HIDDEN CONTENT

function showContent(contain,x){
	$(contain).load(x);
};

function httpGet(theUrl){
	var xmlHttp = null;
	
	xmlHttp = new XMLHttpRequest();
	xmlHttp.open( "GET", theUrl, false );
	xmlHttp.send( null );
	return xmlHttp.responseText;
};

function getSelBox(x){
	var sel = document.getElementById(x);

	var selectedText = sel.options[sel.selectedIndex].text;	
	
	return selectedText;
}

function setVal(x){
	editor.setValue(httpGet(x));
}

//VALIDATION OF FORMS
function validateDonationForm()
{
	var amount = $("#amountInput").val();
	var password1 = $("#passwordInput2").val();
	var password2 = $("#passwordInputConfirmation2").val();
	if (isNaN(amount) || amount==0)
	{
		$("#amountChecker").removeClass("hidden");
		return false;
	}
	else
	{
		$("#amountChecker").addClass("hidden");
	}
	if(password1 == password2)
	{
		$("#passwordChecker").addClass("hidden");
	}
	else
	{
		$("#passwordChecker").removeClass("hidden");
		return false;
	}
	
	

}

function validateSignUp()
{
	var password1 = $("#password_1").val();
	var password2 = $("#password_2").val();
	var email1 = $("#email_1").val();
	var email2 = $("#email_2").val();
	var lname = $("#lastName").val();
	var fname = $("#firstName").val();
    var uname = $("#usernameSignUp").val();   
    var zip = $("#zip").val(); 
	
	if(uname.length<3 || uname.length>16)
	{
		$("#UserNameCheckerInSignUp").removeClass("hidden");
		return false;
	}
	else
	{
		$("#UserNameCheckerInSignUp").addClass("hidden");
	}
	if (!(/^[a-zA-Z()]+$/.test(lname)) || !(/^[a-zA-Z()]+$/.test(fname)) ) 
	{
		$("#NameCheckerInSignUp").removeClass("hidden");
		return false;
	}
	else
	{
		$("#NameCheckerInSignUp").addClass("hidden");
	}	
	if(email1 == email2)
	{
		$("#eMailCheckerInSignUp").addClass("hidden");
	}
	else
	{
		$("#eMailCheckerInSignUp").removeClass("hidden");
		return false;
	}
	if(password1 == password2)
	{
		$("#passwordCheckerInSignUp").addClass("hidden");
	}
	else
	{
		$("#passwordCheckerInSignUp").removeClass("hidden");
		return false;
	}
	if (!(/^[0-9]+$/.test(zip))) 
	{
		$("#zipCheckerInSignUp").removeClass("hidden");
		return false;
	}
	else
	{
		$("#zipCheckerInSignUp").addClass("hidden");
	}	
	
	
}

function validateDonationLogInForm()
{
	var password1 = $("#passwordInput").val();
	var password2 = $("#passwordInputconfirm").val();

	if(password1 == password2)
	{
		$("#passwordCheckerFirst").addClass("hidden");
	}
	else
	{
		$("#passwordCheckerFirst").removeClass("hidden");
		return false;
	}
	

	
	

}




function retVal(){
  alert($('#deliveryDate').val());
}
	
	
