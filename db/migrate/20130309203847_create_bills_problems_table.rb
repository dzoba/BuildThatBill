class CreateBillsProblemsTable < ActiveRecord::Migration
  def change
    create_table :bills_problems, :id => false do |t|
      t.references :problem
      t.references :bill
    end
    add_index :bills_problems, [:problem_id, :bill_id]
    add_index :bills_problems, [:bill_id, :problem_id]
  end
end
