class Employee < ApplicationRecord

  validates_presence_of    :name, :phone, :email
  validates_uniqueness_of  :email
  #auto_strip_attributes    :name, :squish => true
  validates_format_of      :email, :with => /([\w]+)@([\w]+)\.com/
  #has_secure_password
  #validates :password, presence: true, length: { minimum: 6 }

end
