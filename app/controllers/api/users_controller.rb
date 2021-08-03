class Api::UsersController < ApplicationController
  def index
  end

  def create
    user = User.new(
      :name => params[:name],
      :email_address => params[:email_address],
      :password => params[:password],
      :password_confirmation => params[:password_confirmation],
    )
    if user.save
      render :json => { :message => "User added successfully." }, :status => :created
    else
      render :json => { :errors => user.errors.full_messages }, :status => :bad_request
    end
  end
end
