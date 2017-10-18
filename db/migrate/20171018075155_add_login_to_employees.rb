class AddLoginToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :login, :string
  end
end
