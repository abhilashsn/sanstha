class AddBatchIdToStudentbatches < ActiveRecord::Migration
  def change
    add_column :studentbatches, :batch_id, :integer
  end
end
