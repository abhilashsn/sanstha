class TutorsController < ApplicationController
	before_filter :authenticate_user!


	def index 
		@tutors =  Tutor.all 
	end

	def new
		@tutor = Tutor.new
	end

	def create
		@tutor = Tutor.new(tutor_params)

		if @tutor.save
			redirect_to tutors_path, notice: "Successfully added new project."
		else
			render action: "new"
		end
	end

	def edit
		@tutor = Tutor.find(params[:id])
	end

	def update
		@tutor = Tutor.find(params[:id])

		if @tutor.update_attributes(tutor_params)
			redirect_to tutors_path, notice: "Successfully update project."
		else
			render action: "edit"
		end
	end

	def destroy
		@tutor = Tutor.find(params[:id])
		@tutor.destroy
		redirect_to tutors_path, notice: "Successfully delete project."
	end

	def show
		@tutor = Tutor.find(params[:id])
	end

	private

	def tutor_params
		params[:tutor].permit(:name, :qualification, :experience, :address,:gender,:mobile,:hourly_rate,:location,:email)
	end


end
