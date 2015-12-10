class TasksController < ApplicationController
		before_filter :authenticate_user!
		#before_filter :set_project_id, :only => [:index, :create]

	def index
		@tasks = Task.all
		@milestone = Milestone.all
	end
	def create
		@task = Task.new(task_params)
		@task.project_id = @task.milestone.project.id
		if @task.save
			redirect_to project_milestone_path(@milestone.project_id,@milestone)
		else
			render action: "new"
		end
	end

	def new 
	   @project = Project.find(params[:id])
       @task = @project.tasks.new
    end
    
    def show 
		@task = Task.find(params[:id])
	end

	def edit
		@task = Task.find(params[:id])
	end

	def mark_as_incomplete
	@task = Task.find(params[:task_id])
	@task.update_attributes(is_completed: false)
	redirect_to :back, notice: "Successfully changed the status of task"
	end

	def mark_as_complete
	@task = Task.find(params[:task_id])
	@task.update_attributes(is_completed: true)
	redirect_to :back, notice: "Successfully update the task"
	end


	def update
		@task = Task.find(params[:id])
		 if @task.update_attributes(task_params)
            redirect_to task_path(@task)
         else
            render action: "edit"
         end
    end

    def destroy
    	@task = Task.find(params[:id])
		@task.destroy
		 redirect_to tasks_path, notice: "Successfully task deleted" 
    end







	

private
	def task_params
		params[:task].permit(:name,:is_completed,:due_date,:milestone_id,:project_id)
	end
	
end
