class AddStrategyGameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :strategy_game, :boolean
  end
end
