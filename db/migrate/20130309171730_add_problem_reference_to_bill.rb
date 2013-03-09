class AddProblemReferenceToBill < ActiveRecord::Migration
  def change
    add_column :bills, :problem_id, :reference
  end
end
