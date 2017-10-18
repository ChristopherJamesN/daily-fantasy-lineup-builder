class CreateLineups < ActiveRecord::Migration[5.1]
  def change
    create_table :lineups do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.integer :player_id

      t.timestamps
    end
  end
end
