class AddEmpTypeToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :emp_type, :string
  end
end
