class AddADateToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :a_date, :date
  end
end
