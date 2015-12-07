class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :topics
      t.string :description

      t.timestamps null: false
    end
  end
end
