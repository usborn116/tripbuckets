json.extract! budget_category, :id, :name, :budgeted_amount, :trip_id, :created_at, :updated_at
json.url budget_category_url(budget_category, format: :json)
