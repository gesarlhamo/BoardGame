class TopFiveGame < ActiveRecord::Base
  attr_accessible :fifth_game_id, :first_game_id, :fourth_game_id, :second_game_id, :third_game_id, :user_id
belongs_to :user
belongs_to :first_game, :class_name => "Game"
belongs_to :second_game, :class_name => "Game"
belongs_to :third_game, :class_name => "Game"
belongs_to :fourth_game, :class_name => "Game"
belongs_to :fifth_game, :class_name => "Game"


end
