class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      @message.save
      format.js   { }
    end
  end
    
  def index
    if (params.has_key?(:after))
      time_of_latest_message = Time.at(params[:after].to_i + 1)
      @messages = Message.order(created_at: :desc).where("created_at > ?", time_of_latest_message)
    else
      @messages = Message.order(created_at: :desc)
    end
    respond_to do |format|
      format.js
	  end
  end

  def message_params
      params.require(:message).permit(:body, :email, :username)
  end

end
