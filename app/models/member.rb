class Member < ActiveRecord::Base
  attr_accessible :group_id, :user_id
  belongs_to :group
  
  validates_presence_of :group, :user
end
