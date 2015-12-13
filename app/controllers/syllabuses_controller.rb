class SyllabusesController < ApplicationController
	def index
		@syllabus = Syllabus.all
	end

	def new 
		@syllabus = Syllabus.new
	end


	def create 
		@syllabus = Syllabus.new(syllabus_params)
		if @syllabus.save
			redirect_to syllabuses_path
		else
			render "new"
		end
	end




	private 
	def syllabus_params
		params[:syllabus].permit(:topics, :description, :course_ids => [])
	end
end
