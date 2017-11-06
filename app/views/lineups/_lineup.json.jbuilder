json.extract! lineup, :id, :name, :description, :user_id, :created_at, :updated_at, :players
json.url lineup_url(lineup, format: :json)
