json.array!(@cart1s) do |cart1|
  json.extract! cart1, :id
  json.url cart1_url(cart1, format: :json)
end
