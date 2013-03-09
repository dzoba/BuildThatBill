class CreateInterestedEmails < ActiveRecord::Migration
  def change
    create_table :interested_emails do |t|
      t.string :email

      t.timestamps
    end
  end
end
