class AddCourseTypeToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :course_type, :string
  end
end
