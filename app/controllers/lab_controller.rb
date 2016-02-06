class LabController < ApplicationController
  def index
  	@jobs = Job.all.sort_by &:id
  end
  def tasks
  end
  def settings
  end
end