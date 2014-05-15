json.array!(@events) do |event|
  json.extract! event, :id, :name, :email, :phone, :event_date, :city
  json.url event_url(event, format: :json)
end
