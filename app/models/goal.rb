class Goal < ApplicationRecord

  has_and_belongs_to_many    :employees
  belongs_to                 :owner,
                             :class_name => "Employee",
                             :foreign_key => "given_by"

end
