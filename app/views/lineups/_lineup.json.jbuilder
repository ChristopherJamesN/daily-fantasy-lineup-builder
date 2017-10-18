json.extract! lineup, :id, :name, :description, :user_id, :player_id, :created_at, :updated_at
json.url lineup_url(lineup, format: :json)
