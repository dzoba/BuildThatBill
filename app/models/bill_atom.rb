class BillAtom < ActiveRecord::Base
  belongs_to :user
  belongs_to :bill
  attr_accessible :blob, :body
  validates :user_id, :bill_id, :body, :presence => true

  after_create do
    new_blob = create_a_blob
    new_tree = create_a_tree with base tree self.bill.tree
    self.bill.tree = new_tree.tree.sha
  end

  after_update do
    b = self.bill
    
  end
end
