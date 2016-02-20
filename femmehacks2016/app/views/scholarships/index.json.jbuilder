json.array!(@scholarships) do |scholarship|
  json.extract! scholarship, :id, :name, :description, :organization, :amount, :deadline, :eligibility, :link
  json.url scholarship_url(scholarship, format: :json)
end
