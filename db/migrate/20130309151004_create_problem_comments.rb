class CreateProblemComments < ActiveRecord::Migration
  def change
    create_table :problem_comments do |t|
      t.text :body
      t.string :comment_id
      t.references :problem
      t.references :user

      t.timestamps
    end
    add_index :problem_comments, :problem_id
    add_index :problem_comments, :user_id
  end
end
