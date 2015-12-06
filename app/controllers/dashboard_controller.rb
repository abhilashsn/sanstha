class DashboardController < ApplicationController
  def index
  	@students = Student.all
  	@courses = Course.all
  	@batches = Batch.all
  	@projects = Project.all
  end
end
