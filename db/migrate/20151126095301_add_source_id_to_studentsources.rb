class AddSourceIdToStudentsources < ActiveRecord::Migration
  def change
    add_column :studentsources, :source_id, :integer
  end
end
