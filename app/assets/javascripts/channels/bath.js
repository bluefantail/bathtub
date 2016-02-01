App.messages = App.cable.subscriptions.create("BathChannel", {
	connected: function()  {
    	// Called when the subscription is ready for use on the server
	},
	disconnected: function()  {
    	// Called when the subscription has been terminated by the server
	},
	received: function(data)  {
    	// Called when there's incoming data on the websocket for this channel
    	if (data.remove_job) {
    		jobId = data.remove_job;
    		jobElement = document.getElementById("job_" + jobId);
    		jobElement.remove();
    	}else{
			$('#bath').append(data.job);
			newJobForm = document.getElementById("new_job")
    		newJobForm.reset();
    	}
	}
});