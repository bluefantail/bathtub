class JobsController < ApplicationController
  def create
  	new_job = Job.create! job_params
  	ActionCable.server.broadcast "bath_channel", { job: job_render(new_job) }
  	render json: new_job and return
  end

  def destroy
    job_id = params[:id]
    Job.delete(job_id)
    ActionCable.server.broadcast "bath_channel", { remove_job: job_id }
  end

  private
   	def job_params
  		params.require(:job).permit(:name)
  	end
   	def job_render(job)
    	ApplicationController.render(partial: 'jobs/job', locals: { job: job })	
	end
end