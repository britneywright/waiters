json.array!(@waiters) do |waiter|
  json.extract! waiter, :id, :name, :email, :phone, :city
  json.url waiter_url(waiter, format: :json)
end
