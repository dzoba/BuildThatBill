class Bill < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :tree
end
