class Api::ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
    render "index.json.jb"
  end

  def show
    @shift = Shift.find_by(:id => params[:id])
    render "show.json.jb"
  end

  def create
    @shift = Shift.new(
      :user_id => params[:user_id],
      :start => params[:start],
      :finish => params[:finish],
      :break_length => params[:break_length],
    )
    if @shift.save
      render "show.json.jb"
    else
      render :json => { :errors => @shift.errors.full_messages }, :status => :bad_request
    end
  end

  def update
    @shift = Shift.find_by(:id => params[:id])

    @shift.user_id = params[:user_id] || @shift.user_id
    @shift.start = params[:start] || @shift.start
    @shift.finish = params[:finish] || @shift.finish
    @shift.break_length = params[:break_length] || @shift.break_length

    if @shift.save
      render "show.json.jb"
    else
      render :json => { :errors => @shift.errors.full_messages }, :status => :bad_request
    end
  end

  def destroy
    @shift = Shift.find_by(:id => params[:id])

    @shift.destroy
    render :json => { :message => "Shift was destroyed." }
  end
end
