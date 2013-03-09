class Bill < ActiveRecord::Base
  belongs_to :user
  belongs_to :problem
  attr_accessible :title, :tree, :body
  validates :title, :user_id, :body, :presence => true
  has_paper_trail
end

