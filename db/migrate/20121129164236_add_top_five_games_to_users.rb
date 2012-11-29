class AddTopFiveGamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :game, :string
  end
end
