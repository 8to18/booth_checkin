class LeadsController < ApplicationController

  def new
    session[:step] = "Leads"
    @lead = Lead.new
  end

  def edit
    @lead = Lead.find(params[:id])
  end

  def create
    @lead = Lead.new(params[:lead])
    @lead.person_id = session[:person_id]
    if @lead.save
      session[:lead_id] = @lead.id
      redirect_to pages_overview_path
    else
      render :action => new
    end
  end

  def update
    @lead = Lead.find(params[:id])
    respond_to do |format|
      if @lead.update_attributes(params[:lead])
        format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
