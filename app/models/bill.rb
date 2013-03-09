class Bill < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :tree
  validates :title, :user_id, :presence => true
end
