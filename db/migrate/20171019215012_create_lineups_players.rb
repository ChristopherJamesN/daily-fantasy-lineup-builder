class CreateLineupsPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :lineups_players do |t|
      t.integer :lineup_id
      t.integer :player_id
      t.boolean :player_starting, default: true

    end
  end
end
