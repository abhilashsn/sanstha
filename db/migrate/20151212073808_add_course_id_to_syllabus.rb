class AddCourseIdToSyllabus < ActiveRecord::Migration
  def change
    add_column :syllabuses, :course_id, :integer
  end
end
