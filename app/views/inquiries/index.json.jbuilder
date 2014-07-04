json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :created_at, :name, :city, :date
  json.url inquiry_url(inquiry, format: :json)
end