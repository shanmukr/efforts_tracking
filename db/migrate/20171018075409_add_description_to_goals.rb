class AddDescriptionToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :description, :string
  end
end
