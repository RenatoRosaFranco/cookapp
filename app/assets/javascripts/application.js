// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
$(function(){

	// some code here
	$('#searchForm').hide();
	$(window).scroll(function(e){
		var scroll = getCurrentScroll()
		if (scroll >= 330) {
		 $('.navbar-default').addClass('navbar-fixed-top');
		 $('#searchForm').show('slow');
		 $('#toTop').show('slow');
		}
		else{
		 $('#searchForm').hide('slow');
		 $('#toTop').hide('slow');
		 $('.navbar-default').removeClass('navbar-fixed-top');
		}
	});

	function getCurrentScroll(){
		return window.pageYOffset || document.documentElement.scrollTop;
	}
});