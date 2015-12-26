class BatchesController < ApplicationController
		before_action :authenticate_user!
		load_and_authorize_resource


	def index
		#   @projects = current_user.admin? ? Project.all : current_user.projects
	    @batches = Batch.order("created_at DESC").uniq
	end

	def new
		@batch = Batch.new
	end

	def create
		@batch = Batch.new(batch_params)	
		if @batch.save
			redirect_to batches_path
		else
			render action: "new"	
		end	
	end

	def show
		begin
			@batch = Batch.find(params[:id]) 
		rescue ActiveRecord::RecordNotFound
			redirect_to root_url, notice: " Record Does Not Exist"	
		end	
	end

	def update
		@batch = Batch.find(params[:id])
		if @batch.update_attributes(batch_params)
			redirect_to batches_path, notice: "Sucessufully updated"
		else
			render action: "edit"
		end	
	end

	def destroy
		@batch = Batch.find(params[:id])
		@batch.destroy
		redirect_to batches_path
	end

	def edit
		@batch = Batch.find(params[:id])
	    rescue ActiveRecord::RecordNotFound
		redirect_to root_url, notice: "Record Does Not Exist"
	
	end

	private
	def batch_params
		params[:batch].permit(:name, :start_date, :end_date, :instruction_type, :description,:course_id,:is_completed, student_ids: [])
		
	end

end
