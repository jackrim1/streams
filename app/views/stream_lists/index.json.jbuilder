json.array!(@stream_lists) do |stream_list|
  json.extract! stream_list, :id, :title, :description
  json.url stream_list_url(stream_list, format: :json)
end