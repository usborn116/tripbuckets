json.extract! transaction, :id, :note, :amount, :trip_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
