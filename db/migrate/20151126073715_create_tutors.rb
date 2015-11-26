class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
    	t.string :name
    	t.string :qualification
    	t.string :experience
    	t.string :address
    	t.string :gender
    	t.string :mobile
    	t.string :hourly_rate
    	t.string :location
    	t.string :email

      t.timestamps null: false
    end
  end
end
