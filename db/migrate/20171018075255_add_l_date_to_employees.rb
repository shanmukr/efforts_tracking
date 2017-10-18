class AddLDateToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :l_date, :date
  end
end
