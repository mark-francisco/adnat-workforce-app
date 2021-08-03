class Api::OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    render "index.json.jb"
  end

  def show
    @organization = Organization.find_by(:id => params[:id])
    render "show.json.jb"
  end

  def create
    @organization = Organization.new(
      :name => params[:name],
      :hourly_rate => params[:hourly_rate],
    )
    if @organization.save
      render "show.json.jb"
    else
      render :json => { :errors => @organization.errors.full_messages }, :status => :bad_request
    end
  end

  def update
    @organization = Organization.find_by(:id => params[:id])

    @organization.name = params[:name] || @organization.name
    @organization.hourly_rate = params[:hourly_rate] || @organization.hourly_rate

    if @organization.save
      render "show.json.jb"
    else
      render :json => { :errors => @organization.errors.full_messages }, :status => :bad_request
    end
  end

  def destroy
    @organization = Organization.find_by(:id => params[:id])

    @organization.destroy
    render :json => { :message => "Organization was destroyed." }
  end
end
