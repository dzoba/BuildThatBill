class Problem < ActiveRecord::Base
  attr_accessible :body, :number, :title, :user
  belongs_to :user
  validates :title, :body, :user_id, :presence => true
end
