json.extract! trip, :id, :name, :location, :start_date, :end_date, :created_at, :updated_at
json.url trip_url(trip, format: :json)
