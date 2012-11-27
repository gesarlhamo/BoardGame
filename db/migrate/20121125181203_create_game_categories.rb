class CreateGameCategories < ActiveRecord::Migration
  def change
    create_table :game_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
