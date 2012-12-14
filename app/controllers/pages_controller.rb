class PagesController < ApplicationController
  
  def start
  	reset_session
  	session[:step] = "Start"
  end

  def overview
  	session[:step] = "Overview"
  	@interested_in = interested_in
  end

  def interested_in
  	lead = Lead.find(session[:lead_id])
  	array = []
  	array << "Scheduling" if lead.scheduling
  	array << "Registration" if lead.registration
  	array << "Spirit Wear" if lead.spirit
  	array << "Summer Camps" if lead.camps
  	array << "Boosters" if lead.boosters
  	array << "Fundraising" if lead.fundraising
  	if array.size == 0
  		string = "Nothing"
  	else
  		string = ""
  		array.each do |interest|
  			if array.last != interest
  				string += interest + ", "
  			else
  				string += interest
  			end
  		end
  	end
  	return string
  end

end