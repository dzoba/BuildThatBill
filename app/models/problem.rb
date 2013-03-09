class Problem < ActiveRecord::Base
  attr_accessible :body, :number, :title, :user_id
  belongs_to :user
  has_and_belongs_to_many :bills
  validates :title, :body, :user_id, :presence => true
  acts_as_commentable
end
