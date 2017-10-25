json.extract! orden_request_detail, :id, :orden_request_id, :product_id, :quantity, :created_at, :updated_at
json.url orden_request_detail_url(orden_request_detail, format: :json)
