json.array!(@reduxes) do |redux|
  json.extract! redux, :id
  json.url redux_url(redux, format: :json)
end
