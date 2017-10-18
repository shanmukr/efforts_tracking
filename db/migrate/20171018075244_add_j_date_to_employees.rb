class AddJDateToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :j_date, :date
  end
end
