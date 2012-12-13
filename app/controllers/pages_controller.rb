class PagesController < ApplicationController
  
  def start
  	session[:person_id] = nil
  	session[:lead_id] = nil
  end

  def overview

  end

end