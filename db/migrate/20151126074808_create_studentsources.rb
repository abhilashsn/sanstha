class CreateStudentsources < ActiveRecord::Migration
  def change
    create_table :studentsources do |t|
    	

      t.timestamps null: false
    end
  end
end
