class Person < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :phone, :state, :title, :school
  has_one :lead

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :school, :presence => true
  validates :state, :presence => true
  validates :title, :presence => true
  validates_format_of :email, :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

end
