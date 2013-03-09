class AddBodyToBill < ActiveRecord::Migration
  def change
    add_column :bills, :body, :text
  end
end
