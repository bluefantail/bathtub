class LabController < ApplicationController
  def index
  	@jobs = Job.all
  end
end