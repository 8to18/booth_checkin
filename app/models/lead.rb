class Lead < ActiveRecord::Base
  attr_accessible :boosters, :camps, :current, :fundraising, :person_id, :registration, :scheduling, :spirit, :school_size
  belongs_to :person
end
