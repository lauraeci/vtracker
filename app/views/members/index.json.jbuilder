json.array!(@members) do |member|
  json.extract! member, :id, :organization_id, :first_name, :last_name, :email, :phone, :age, :hours_worked, :last_contacted_at
  json.url member_url(member, format: :json)
end
