json.array!(@addresses) do |address|
  json.extract! address, :id, :street1, :street2, :state, :country, :zipcode
  json.url address_url(address, format: :json)
end
