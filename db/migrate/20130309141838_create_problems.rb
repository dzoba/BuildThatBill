class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.text :body
      t.integer :number
      t.references :user

      t.timestamps
    end
  end
end
