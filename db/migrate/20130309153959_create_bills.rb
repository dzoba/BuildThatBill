class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :title
      t.string :tree
      t.references :user

      t.timestamps
    end
    add_index :bills, :user_id
  end
end
