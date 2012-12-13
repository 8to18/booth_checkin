class PagesController < ApplicationController
  
  def start
  	reset_session
  	session[:step] = "Start"
  end

  def overview

  end

end