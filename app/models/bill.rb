class Bill < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :problems
  attr_accessible :title, :tree, :body, :user_id
  validates :title, :user_id, :body, :presence => true
  has_ancestry
  has_paper_trail
end

