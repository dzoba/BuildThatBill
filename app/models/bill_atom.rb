class BillAtom < ActiveRecord::Base
  belongs_to :user
  belongs_to :bill
  attr_accessible :blob, :body
end
