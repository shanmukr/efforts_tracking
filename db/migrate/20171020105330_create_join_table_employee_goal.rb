class CreateJoinTableEmployeeGoal < ActiveRecord::Migration[5.1]
  def change
    create_join_table :employees, :goals do |t|
      # t.index [:employee_id, :goal_id]
      # t.index [:goal_id, :employee_id]
    end
  end
end
