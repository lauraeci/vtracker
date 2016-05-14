json.array!(@addresses) do |address|
  json.extract! address, :id, :street1, :street2, :city, :state, :country, :zipcode, :member_id
  json.url address_url(address, format: :json)
end
