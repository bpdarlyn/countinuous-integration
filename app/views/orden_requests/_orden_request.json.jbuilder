json.extract! orden_request, :id, :date_orden, :request_number, :in_charge, :event, :price_by_ticket, :event_id, :created_at, :updated_at
json.url orden_request_url(orden_request, format: :json)
