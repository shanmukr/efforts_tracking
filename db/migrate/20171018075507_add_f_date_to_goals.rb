class AddFDateToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :f_date, :date
  end
end
