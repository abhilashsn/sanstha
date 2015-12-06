class AddIsCompletedToBatches < ActiveRecord::Migration
  def change
    add_column :batches, :is_completed, :boolean
  end
end
