class LabController < ApplicationController
  before_action :authenticate_user!
  def index
  	@jobs = Job.all.sort_by &:id
  end
  def tasks
  end
  def settings
  end
end