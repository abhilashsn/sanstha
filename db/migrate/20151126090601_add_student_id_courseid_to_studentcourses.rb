class AddStudentIdCourseidToStudentcourses < ActiveRecord::Migration
  def change
    add_column :studentcourses, :student_id, :integer
    add_column :studentcourses, :course_id, :integer
  end
end
