class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.integer :projectedPoints
      t.integer :actualPoints
      t.integer :lineup_id

      t.timestamps
    end
  end
end
