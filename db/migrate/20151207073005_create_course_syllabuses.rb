class CreateCourseSyllabuses < ActiveRecord::Migration
  def change
    create_table :course_syllabuses do |t|
      t.integer :course_id
      t.integer :syllabus_id

      t.timestamps null: false
    end
  end
end
