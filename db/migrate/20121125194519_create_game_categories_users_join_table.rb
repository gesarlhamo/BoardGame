class CreateGameCategoriesUsersJoinTable < ActiveRecord::Migration
    def change
      create_table :game_categories_users, :id => false do |t|
        t.integer :game_category_id
        t.integer :user_id
      end
    end  
end
