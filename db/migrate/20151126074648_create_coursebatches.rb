class CreateCoursebatches < ActiveRecord::Migration
  def change
    create_table :coursebatches do |t|

      t.timestamps null: false
    end
  end
end
