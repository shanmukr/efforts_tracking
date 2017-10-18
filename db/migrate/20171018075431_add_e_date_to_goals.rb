class AddEDateToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :e_date, :date
  end
end
