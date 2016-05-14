json.array!(@organizations) do |organization|
  json.extract! organization, :id, :account_id, :member_id, :name
  json.url organization_url(organization, format: :json)
end
