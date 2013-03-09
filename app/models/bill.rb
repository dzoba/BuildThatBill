class Bill < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :tree
  validates :title, :user_id, :presence => true

  after_create do
    new_tree = create_a_tree

    commit = create_a_commit with new_tree
    self.tree = commit.tree.sha
  end
end

