class EventsController < ApplicationController

  def join
    @event = Event.find_by(code: params[:event][:code])
    if (@event)
      redirect_to event_path(@event.code)
    else
      flash[:alert] = "No event was found with code #{code}"
      render 'static/home'
    end
  end

  def show
    @event = Event.find_by(code: params[:event_code])
    @message = @event.messages.new
  end

  def display
    @event = Event.find_by(code: params[:event_code])
  end

end
