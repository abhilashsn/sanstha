class AddCourseIdToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :course_id, :integer
  end
end
