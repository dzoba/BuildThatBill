class AddCommitToBillAtom < ActiveRecord::Migration
  def change
    add_column :bill_atoms, :commit, :string
  end
end
