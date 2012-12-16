class PagesController < ApplicationController
  
  def start
  	reset_session
  	session[:step] = "Start"
  end

  def select
    session[:step] = "Select"
    @people = []
    Person.order('last_name DESC').all.each do |person|
      @people << person if person.lead == nil
    end
    if @people.count == 0
      redirect_to new_person_path
    else
      return @people
    end
  end

  def overview
  	session[:step] = "Overview"
  	@interested_in = interested_in
  end

  def admin
    if session[:admin] != "OK"
      redirect_to root_path
    end
    @people = Person.order("last_name DESC").all
  end

  def login    
  end

  def validate
    if params[:password] == "!A2k1243"
      session[:admin] = "OK"
      redirect_to pages_admin_path
    else
      render :action => "login"
    end
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