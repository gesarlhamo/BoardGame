class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :password_digest, :location, :top_five_games, :game_preferences, :picture, :level, :game_category_ids
  
  has_many :groups, :through => :members
  
  has_and_belongs_to_many :game_categories
  
  has_secure_password

end
