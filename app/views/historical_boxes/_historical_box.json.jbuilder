json.extract! historical_box, :id, :ticket_box_id, :status, :available, :not_available, :inflow_detail_id, :outflow_integer_id, :created_at, :updated_at
json.url historical_box_url(historical_box, format: :json)
