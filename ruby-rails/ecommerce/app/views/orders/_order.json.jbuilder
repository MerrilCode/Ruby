json.extract! order, :id, :cost, :number, :customer_id, :created_at, :updated_at
json.url order_url(order, format: :json)
