module ApplicationHelper
end
def test_data
  u = User.find(1)
  b = Bill.new
  b.user = u
  b.title = "My new bill"
end
