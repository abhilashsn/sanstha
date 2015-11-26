class AddTutorIdToStudentbatches < ActiveRecord::Migration
  def change
    add_column :studentbatches, :tutor_id, :integer
  end
end
