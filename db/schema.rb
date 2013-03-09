# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130309193529) do

  create_table "bill_atoms", :force => true do |t|
    t.text     "body"
    t.string   "blob"
    t.integer  "user_id"
    t.integer  "bill_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "commit"
  end

  add_index "bill_atoms", ["bill_id"], :name => "index_bill_atoms_on_bill_id"
  add_index "bill_atoms", ["user_id"], :name => "index_bill_atoms_on_user_id"

# Could not dump table "bills" because of following StandardError
#   Unknown type 'reference' for column 'problem_id'

  create_table "problem_comments", :force => true do |t|
    t.text     "body"
    t.string   "comment_id"
    t.integer  "problem_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "problem_comments", ["problem_id"], :name => "index_problem_comments_on_problem_id"
  add_index "problem_comments", ["user_id"], :name => "index_problem_comments_on_user_id"

  create_table "problems", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "number"
    t.integer  "user_id"

  create_table "interested_emails", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "problems_users", :id => false, :force => true do |t|
    t.integer "problem_id"
    t.integer "bill_id"
  end

  add_index "problems_users", ["bill_id", "problem_id"], :name => "index_problems_users_on_bill_id_and_problem_id"
  add_index "problems_users", ["problem_id", "bill_id"], :name => "index_problems_users_on_problem_id_and_bill_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
