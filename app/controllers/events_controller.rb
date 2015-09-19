class EventsController < ApplicationController

  def join
    code = params[:event][:code]
    @event = Event.find_by_code(params[:event][:code])
    if (@event)
      redirect_to event_path(@event)
    else
      flash[:alert] = "No event matched the code #{code}"
      render 'static/home'
    end
  end

  def show
    @event = Event.find(params[:id])
    @message = Message.new(:event => @event)

  end

end
