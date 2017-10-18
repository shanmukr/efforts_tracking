class AddEidToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :eid, :integer
  end
end
