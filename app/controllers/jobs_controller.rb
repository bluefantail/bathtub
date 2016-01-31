class JobsController < ApplicationController
  def create
  	new_job = Job.create! job_params
  	ActionCable.server.broadcast "bath_channel", { job: new_job.name }
  	render json: new_job and return
  end

  private
   	def job_params
  		params.require(:job).permit(:name)
  	end
end