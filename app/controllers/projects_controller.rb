class ProjectsController < ApplicationController
	before_filter :authenticate_user!


	def index 
		@projects =  Project.all 
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to projects_path, notice: "Successfully added new project."
		else
			render action: "new"
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(project_params)
			redirect_to projects_path, notice: "Successfully update project."
		else
			render action: "edit"
		end
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path, notice: "Successfully delete project."
	end

	def show
		@project = Project.find(params[:id])
	end

	private

	def project_params
		params[:project].permit(:name, :description, :status, :start_date)
	end
end
