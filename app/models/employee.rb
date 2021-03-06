class Employee < ApplicationRecord

  validates_presence_of    :name, :email
  validates_uniqueness_of  :email, :phone, :eid, :login
  #auto_strip_attributes    :name, :squish => true
  validates_format_of      :email, :with => /([\w]+)@([\w]+)\.com/
  #has_secure_password
  #validates :password, presence: true, length: { minimum: 6 }

  has_and_belongs_to_many    :goals
  belongs_to                 :manager,
                             :class_name => "Employee",
                             :foreign_key => "manager_id"

end
