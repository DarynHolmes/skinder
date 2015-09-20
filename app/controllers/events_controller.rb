class EventsController < ApplicationController

  before_action :logged_in_user, only: [:create, :index]

  def join
    event_code = params[:event][:code]
    @event = Event.find_by(code: event_code)
    if (@event)
      redirect_to event_path(@event.code)
    else
      flash[:alert] = "No event was found with code #{event_code}"
      render 'static/home'
    end
  end

  def create
    
    @event = Event.new(event_params)

    if(@event.save)
        redirect_to events_path
    else
      @events = Event.all.order(:name)
      render :index
    end
  end

  def index
    @events = Event.all.order(:name)
    @event = Event.new
  end

  def show
    @event = Event.find_by(code: params[:event_code])
    if (@event)
      @message = @event.messages.new
    else
      flash[:alert] = "No event was found with code #{event_code}"
      render 'static/home'
    end
  end

  def display
    @event = Event.find_by(code: params[:event_code])
  end

  private

  def event_params
      params.require(:event).permit(:name, :code, :image_url)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

end
