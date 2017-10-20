class AddStatusToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :status, :string
  end
end
