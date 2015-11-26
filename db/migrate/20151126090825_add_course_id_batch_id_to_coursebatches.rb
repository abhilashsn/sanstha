class AddCourseIdBatchIdToCoursebatches < ActiveRecord::Migration
  def change
    add_column :coursebatches, :course_id, :integer
    add_column :coursebatches, :batch_id, :integer
  end
end
