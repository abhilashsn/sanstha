class ProjectsController < ApplicationController
	before_filter :authenticate_user!
	load_and_authorize_resource


	def index 
		@projects =  Project.order(created_at: :desc).uniq
		@milestones = Milestone.all
		@tasks = Task.all
		@projects_count=Project.count
		@milestones_count = Milestone.count
		@tasks_count = Task.count
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save

			Notification.send_request(@project)

			redirect_to projects_path, notice: "Successfully added new project."
		else
			render action: "new"
		end
	end

	def assign_student
		@project = Project.find_by_id(params[:id])
		@assigned_student = @project.student_id.split(",") unless @project.student_id.nil?
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
		@milestone = @project.milestones

	end

	private

	def project_params
		params[:project].permit(:name, :description, :status, :start_date, student_ids: [])
	end
end
