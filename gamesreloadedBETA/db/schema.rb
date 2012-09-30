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

ActiveRecord::Schema.define(:version => 20120925123949) do

  create_table "games", :force => true do |t|
    t.string   "name"
    t.integer  "views"
    t.integer  "ratings"
    t.string   "author"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
    t.string   "image"
    t.string   "swflocation"
    t.string   "category"
    t.string   "authorUrl"
    t.integer  "swfWidth"
    t.integer  "swfHeight"
  end

  create_table "moderators", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "moderators", ["email"], :name => "index_moderators_on_email", :unique => true
  add_index "moderators", ["remember_token"], :name => "index_moderators_on_remember_token"

end
