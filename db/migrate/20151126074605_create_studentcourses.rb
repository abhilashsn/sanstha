class CreateStudentcourses < ActiveRecord::Migration
  def change
    create_table :studentcourses do |t|

      t.timestamps null: false
    end
  end
end
