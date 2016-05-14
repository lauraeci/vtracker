json.array!(@accounts) do |account|
  json.extract! account, :id, :organization_id, :email, :password
  json.url account_url(account, format: :json)
end
