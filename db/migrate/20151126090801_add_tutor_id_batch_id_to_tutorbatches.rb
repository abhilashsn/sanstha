class AddTutorIdBatchIdToTutorbatches < ActiveRecord::Migration
  def change
    add_column :tutorbatches, :tutor_id, :integer
    add_column :tutorbatches, :batch_id, :integer
  end
end
