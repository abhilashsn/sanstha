class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|

      t.timestamps null: false
    end
  end
end
