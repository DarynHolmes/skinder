json.array!(@messages) do |message|
  json.extract! message, :id, :body
  json.url event_message_url(@event.code, message, format: :json)
end