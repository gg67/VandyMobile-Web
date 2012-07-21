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

ActiveRecord::Schema.define(:version => 20120721215431) do

  create_table "apps", :force => true do |t|
    t.integer  "team_id"
    t.string   "name"
    t.string   "os"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "team"
    t.text     "tagline"
    t.string   "image_url"
    t.string   "app_url"
  end

  add_index "apps", ["team_id"], :name => "index_apps_on_team_id"

  create_table "meeting_assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "meeting_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "meeting_assignments", ["meeting_id"], :name => "index_meeting_assignments_on_meeting_id"
  add_index "meeting_assignments", ["user_id"], :name => "index_meeting_assignments_on_user_id"

  create_table "meetings", :force => true do |t|
    t.string   "day"
    t.datetime "date"
    t.boolean  "food"
    t.boolean  "speaker"
    t.string   "speaker_name"
    t.string   "topic"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "location"
    t.float    "xcoordinate"
    t.float    "ycoordinate"
    t.text     "description"
  end

  create_table "team_assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "team_assignments", ["team_id"], :name => "index_team_assignments_on_team_id"
  add_index "team_assignments", ["user_id"], :name => "index_team_assignments_on_user_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
