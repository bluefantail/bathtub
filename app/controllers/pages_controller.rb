class PagesController < ApplicationController
  def index
  end
  def bath
  	@jobs = Job.all
  end
  def contact
  end
end
