class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  has_many :problems
  has_many :bills
  

  def fork_bill(bill_id)
    b = Bill.find(bill_id)
    new_bill = b.dup
    new_bill.parent = b
    self.bills << new_bill
  end

end
