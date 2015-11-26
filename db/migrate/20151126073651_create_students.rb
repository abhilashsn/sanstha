class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name
    	t.string :email
    	t.string :mobile
    	t.text :about
    	t.string :address
    	t.string :gender
    	t.string :qualification
    	t.string :preference


      t.timestamps null: false
    end
  end
end
