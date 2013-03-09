class CreateBillAtoms < ActiveRecord::Migration
  def change
    create_table :bill_atoms do |t|
      t.text :body
      t.string :blob
      t.references :user
      t.references :bill

      t.timestamps
    end
    add_index :bill_atoms, :user_id
    add_index :bill_atoms, :bill_id
  end
end
