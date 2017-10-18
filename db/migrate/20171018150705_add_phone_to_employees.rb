class AddPhoneToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :phone_nu, :integer
  end
end
