json.extract! inflow_detail, :id, :product_id, :ticket_boxes_id, :start_number, :end_number, :quantity, :created_at, :updated_at
json.url inflow_detail_url(inflow_detail, format: :json)
