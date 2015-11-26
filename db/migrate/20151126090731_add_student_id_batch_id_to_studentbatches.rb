class AddStudentIdBatchIdToStudentbatches < ActiveRecord::Migration
  def change
    add_column :studentbatches, :student_id, :integer
    add_column :studentbatches, :course_id, :integer
  end
end
