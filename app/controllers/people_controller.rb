class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def new
    session[:step] = "New Person"
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(params[:person])
    if @person.save
      session[:person_id] = @person.id
      redirect_to new_lead_path
    else
      render :action => 'new'
    end
  end

  def update
    @person = Person.find(params[:id])
    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.html { redirect_to pages_overview_path}
      else
        format.html { render action: "edit" }
      end
    end
  end

end
