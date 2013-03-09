class BillAtom < ActiveRecord::Base
  belongs_to :user
  belongs_to :bill
  attr_accessible :blob, :body, :commit
  validates :user_id, :bill_id, :body, :presence => true


end
