class Goal < ApplicationRecord

  validates_uniqueness_of  :description, :name 
  validates_presence_of    :name, :description, :e_date, :status

  has_and_belongs_to_many    :employees
  belongs_to                 :owner,
                             :class_name => "Employee",
                             :foreign_key => "given_by"

end
