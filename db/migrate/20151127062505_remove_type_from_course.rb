class RemoveTypeFromCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :type, :string
  end
end
