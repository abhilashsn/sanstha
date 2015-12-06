class AddAttributesToMilestones < ActiveRecord::Migration
  def change
    add_column :milestones, :title, :string
    add_column :milestones, :is_completed, :boolean
    add_column :milestones, :due_date, :date
  end
end
