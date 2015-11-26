class AddStudentIdToStudentsources < ActiveRecord::Migration
  def change
    add_column :studentsources, :student_id, :integer
  end
end
