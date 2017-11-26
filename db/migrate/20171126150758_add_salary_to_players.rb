class AddSalaryToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :salary, :integer
  end
end
