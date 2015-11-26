class CreateStudentbatches < ActiveRecord::Migration
  def change
    create_table :studentbatches do |t|

      t.timestamps null: false
    end
  end
end
