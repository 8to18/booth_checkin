class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :state, :title, :school
  has_one :lead
end
