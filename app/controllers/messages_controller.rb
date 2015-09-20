class MessagesController < ApplicationController

  def create
    @event = Event.find_by(code: params[:event_code])
    @message = @event.messages.new(message_params)
    @event.save

    respond_to do |format|    
      format.js   { }
    end
  end
    
  def index
    
    event = Event.find_by(code: params[:event_code])

    if (params.has_key?(:after))
      time_of_latest_message = Time.at(params[:after].to_i + 1)
      @messages = event.messages.order(created_at: :desc).where("created_at > ?", time_of_latest_message)
    else
      @messages = event.messages.order(created_at: :desc)
    end
    respond_to do |format|
      format.js
	  end
  end

  def message_params
      params.require(:message).permit(:body, :email, :username)
  end

end
