json.extract! outflow_detail, :id, :outflow_id, :product_id, :quantity, :start_number, :end_number, :created_at, :updated_at
json.url outflow_detail_url(outflow_detail, format: :json)
