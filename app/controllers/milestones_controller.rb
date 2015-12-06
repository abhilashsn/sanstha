class MilestonesController < ApplicationController
	before_action :set_milestone, only: [:show,:edit,:update,:destroy]

	def index
		@project = Project.find(params[:project_id])
		@milestones = @project.milestones
	end

	def new
       @milestone = Milestone.new
       @project= Project.find(params[:project_id])
	end

	def create
		@milestone = Milestone.new(milestone_params)
		@milestone.project_id = params[:project_id]

		if @milestone.save
			redirect_to project_milestone_path(@milestone.project_id,@milestone), notice: "Successfully added new milestone."
		else
			render action: "new"
		end
	end

	def edit
	end

	def update
		if @milestone.update_attributes(milestone_params)
			redirect_to project_milestone_path, notice: "Successfully updated milestone."
		else
			render action: "edit"
		end
	end

	def destroy
		@milestone.destroy
		 redirect_to project_milestone_path(@milestone.project_id), notice: "Successfully milestone deleted" 
	end

	def show
	end

	private
	def set_milestone
		@milestone = Milestone.find(params[:id])
	end

	def milestone_params
		params[:milestone].permit(:title, :is_completed, :due_date,:project_id)
	end

end
