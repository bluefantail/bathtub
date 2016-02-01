class LabController < ApplicationController
  def index
  	@jobs = Job.all.sort_by &:id
  end
end