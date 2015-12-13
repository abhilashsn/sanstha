class StudentsController < ApplicationController
		before_action :authenticate_user!
		load_and_authorize_resource

	def index
	  @students = Student.active
	  @student = Student.new
	end
	def new
	  @courses=Studentcourse.all
	  @student = Student.new	
	  @course=Studentcourse.new
	end
	 def create
   	 @student = Student.new(student_params)

     respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
        # added:
        format.js   { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
        # added:
        format.js   { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

	def show 
		@student = Student.find(params[:id])
	end

	def edit
		@student = Student.find(params[:id])
	end


	def update
		@student = Student.find(params[:id])
		 if @student.update_attributes(student_params)
            redirect_to students_path(@student)
         else
            render action: "edit"
         end
    end

    def destroy
    	@student = Student.find(params[:id])
		@student.destroy
		 redirect_to students_path, notice: "Successfully student deleted" 
    end




	private 

	def student_params
		params[:student].permit(:name,:email,:mobile,:about,:address,:gender,:qualification,:preference, course_ids: [])
		# :course_ids => []

	end


end
