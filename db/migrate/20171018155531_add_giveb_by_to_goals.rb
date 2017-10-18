class AddGivebByToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :given_by, :integer
  end
end
