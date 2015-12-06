class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :name
    	t.string :description
    	t.string :status
    	t.string :start_date


      t.timestamps null: false
    end
  end
end
