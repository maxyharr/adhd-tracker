json.array!(@medications) do |medication|
  json.extract! medication, :id, :name, :category
  json.url medication_url(medication, format: :json)
end
