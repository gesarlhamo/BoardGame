class GameCategory < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :users
  belongs_to :users
end
