class AddTProgressToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :t_progress, :boolean
  end
end
