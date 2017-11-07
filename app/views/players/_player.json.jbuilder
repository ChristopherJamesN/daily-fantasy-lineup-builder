json.extract! player, :id, :name, :position, :projectedPoints, :actualPoints, :lineups, :lineups_players
json.url player_url(player, format: :json)
