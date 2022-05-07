json.extract! gear_item, :id, :name, :description, :is_checked_out, :user_id, :created_at, :updated_at
json.url gear_item_url(gear_item, format: :json)
