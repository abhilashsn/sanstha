class ChangeDescriptionTypeInSyllabuses < ActiveRecord::Migration
  def change
  	    change_column :syllabuses, :description, :text

  end
end
