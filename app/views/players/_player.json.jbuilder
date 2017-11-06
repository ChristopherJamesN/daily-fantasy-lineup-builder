json.extract! player, :id, :name, :position, :projectedPoints, :actualPoints, :created_at, :updated_at, :lineups, :lineups_players
json.url player_url(player, format: :json)
