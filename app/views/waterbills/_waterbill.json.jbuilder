json.extract! waterbill, :id, :comsumer, :month, :year, :consumption, :created_at, :updated_at
json.url waterbill_url(waterbill, format: :json)
