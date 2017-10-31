json.extract! player, :id, :name, :position, :projectedPoints, :actualPoints, :created_at, :updated_at
json.url player_url(player, format: :json)
