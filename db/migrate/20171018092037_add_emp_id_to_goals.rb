class AddEmpIdToGoals < ActiveRecord::Migration[5.1]
  def change
    add_column :goals, :emp_id, :integer
  end
end
