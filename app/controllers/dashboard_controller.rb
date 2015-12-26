class DashboardController < ApplicationController
	before_action :authenticate_user!

  def index
  	@students = Student.all
  	@courses = Course.all
  	@batches = Batch.all
  	@projects = Project.all
  	@user = User.all
  end
end
