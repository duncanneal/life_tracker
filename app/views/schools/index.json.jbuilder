json.array!(@schools) do |school|
  json.extract! school, :id, :title, :start_year, :end_year
  json.url school_url(school, format: :json)
end
