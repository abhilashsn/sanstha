class CreateTutorbatches < ActiveRecord::Migration
  def change
    create_table :tutorbatches do |t|

      t.timestamps null: false
    end
  end
end
