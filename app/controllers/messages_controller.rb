class MessagesController < ApplicationController
	
  def index
      time_of_latest_message = Time.at( params[:after].to_i + 1)
  		@messages = Message.order(created_at: :desc).where("created_at > ?", time_of_latest_message)
	end
end
