class AddTypeToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :type, :string
  end
end
