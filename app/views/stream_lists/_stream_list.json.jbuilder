json.extract! stream_list, :id, :title, :description, :created_at, :updated_at
json.url stream_list_url(stream_list, format: :json)