class Lead < ActiveRecord::Base
  attr_accessible :boosters, :camps, :current, :fundraising, :person_id, :registration, :scheduling, :spirit
  belongs_to :person
end
