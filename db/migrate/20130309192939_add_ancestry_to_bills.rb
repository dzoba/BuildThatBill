class AddAncestryToBills < ActiveRecord::Migration
  def change
    add_column :bills, :ancestry, :string
    add_index :bills, :ancestry 
  end
end
