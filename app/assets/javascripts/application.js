// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Useful Functions
function no_jobs_check() {
	// Displays a no jobs message if there are no jobs in the queue
	var bath = document.getElementById("bath");
	var noJobsElement = document.querySelector('.no-jobs');
	var jobCount = bath.children.length - 1;
	if (!jobCount) {
		noJobsElement.setAttribute('class', 'no-jobs');
	}else{
		noJobsElement.setAttribute('class', 'no-jobs hide');
	}
}