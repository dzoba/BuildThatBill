class CreateProblemsBillsTable < ActiveRecord::Migration
  def change
    create_table :problems_users, :id => false do |t|
      t.references :problem
      t.references :bill
    end
    add_index :problems_users, [:problem_id, :bill_id]
    add_index :problems_users, [:bill_id, :problem_id]
  end
end
