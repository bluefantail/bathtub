class BathBroadcastJob < ApplicationJob
  queue_as :default

  # def perform(job)
  #   ActionCable.server.broadcast 'bath_channel', job: render_job(job)
  # end

  # private
  # 	def render_job(job)
  #   	ApplicationController.renderer.render(partial: 'jobs/job', locals: { job: job })	
  # 	end
end