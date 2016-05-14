json.array!(@emails) do |email|
  json.extract! email, :id, :member_id, :subject, :account_id, :subject_type
  json.url email_url(email, format: :json)
end
