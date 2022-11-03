json.array! @issues do |issue|
  json.extract! issue, :number, :created_at, :payload
end
