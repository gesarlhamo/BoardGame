class CreateTopFiveGames < ActiveRecord::Migration
  def change
    create_table :top_five_games do |t|
      t.integer :user_id
      t.integer :first_game_id
      t.integer :second_game_id
      t.integer :third_game_id
      t.integer :fourth_game_id
      t.integer :fifth_game_id

      t.timestamps
    end
  end
end
