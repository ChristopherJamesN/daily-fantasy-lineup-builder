json.extract! lineup, :id, :name, :description, :user_id, :players, :lineups_players
json.url lineup_url(lineup, format: :json)
