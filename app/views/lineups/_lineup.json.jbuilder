json.extract! lineup, :id, :name, :description, :user_id, :created_at, :updated_at, :players, :lineups_players
json.url lineup_url(lineup, format: :json)
