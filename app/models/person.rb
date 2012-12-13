class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :state, :title
  has_one :lead
end
