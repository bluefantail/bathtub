function no_jobs_check() {
	// Displays a message if there are no jobs in the queue
	var noJobsElement = document.querySelector('.no-jobs');
	var jobCount = bath.children.length - 1;
	if (!jobCount) {
		noJobsElement.setAttribute('class', 'no-jobs');
	}
}
App.messages = App.cable.subscriptions.create("BathChannel", {
	connected: function()  {
    	// Called when the subscription is ready for use on the server
    	no_jobs_check();
	},
	disconnected: function()  {
    	// Called when the subscription has been terminated by the server
	},
	received: function(data)  {
    	// Called when there's incoming data on the websocket for this channel
    	var bath = document.getElementById("bath");
    	var noJobsElement = document.querySelector('.no-jobs');
    	if (data.remove_job) {
    		var jobId = data.remove_job;
    		var jobElement = document.getElementById("job_" + jobId);
    		jobElement.remove();
    		no_jobs_check();
    	}else{
    		noJobsElement.setAttribute('class', 'no-jobs hide');
			$('#bath').append(data.job);
			newJobForm = document.getElementById("new_job");
    		newJobForm.reset();
    	}
	}
});