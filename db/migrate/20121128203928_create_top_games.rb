class CreateTopGames < ActiveRecord::Migration
  def change
    create_table :top_games do |t|
      t.string :name

      t.timestamps
    end
  end
end
