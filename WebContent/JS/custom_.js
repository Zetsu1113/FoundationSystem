// JavaScript Document

// Page Transition

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


$('#imageHead').enscroll({
    showOnHover: true,
    verticalTrackClass: 'track3',
    verticalHandleClass: 'handle3'
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