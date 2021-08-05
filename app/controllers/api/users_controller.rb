class Api::UsersController < ApplicationController
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

  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(:id => params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find_by(:id => params[:id])

    @user.organization_id = params[:organization_id] || @user.organization_id
    @user.name = params[:name] || @user.name
    @user.email_address = params[:email_address] || @user.email_address

    if params[:clear_shifts]
      @user.shifts.destroy_all
    end

    if @user.save
      render "show.json.jb"
    else
      render :json => { :errors => @user.errors.full_messages }, :status => :bad_request
    end
  end

  def destroy
    @user = User.find_by(:id => params[:id])

    @user.destroy
    render :json => { :message => "User was destroyed." }
  end
end
