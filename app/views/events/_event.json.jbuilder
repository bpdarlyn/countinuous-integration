json.extract! event, :id, :name, :event_date, :type_of_event_id, :created_at, :updated_at
json.url event_url(event, format: :json)
