class CoursesController < ApplicationController
	before_action :authenticate_user!
	def index
		@courses = Course.all
	end

	def new
       @course = Course.new
	end

	def create
		@course = Course.new(course_params)

		if @course.save
			redirect_to courses_path, notice: "Successfully added new course."
		else
			render action: "new"
		end
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])

		if @course.update_attributes(course_params)
			redirect_to courses_path, notice: "Successfully updated course."
		else
			render action: "edit"
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		 redirect_to courses_path, notice: "Successfully course deleted" 
	end

	def show
		 @course = Course.find(params[:id])
	end

	private

	def course_params
		params[:course].permit(:name, :course_type, :duration)
	end
end
