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

ActiveRecord::Schema.define(:version => 20110917144207) do

  create_table "activities", :force => true do |t|
    t.string   "title"
    t.string   "nickname"
    t.string   "abstract"
    t.string   "contract"
    t.integer  "funding_id"
    t.integer  "funding_amount"
    t.integer  "startdate_id"
    t.integer  "enddate_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "categorytype"
    t.string   "abstract"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "activity_id"
    t.string   "title"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "components", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.string   "abstract"
    t.integer  "activity_id"
    t.float    "sizex"
    t.float    "sizey"
    t.integer  "technology_id"
    t.string   "status"
    t.string   "qlevel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contractors", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "entity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliverables", :force => true do |t|
    t.string   "title"
    t.string   "number"
    t.integer  "activity_id"
    t.integer  "milestone_id"
    t.string   "status"
    t.boolean  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entities", :force => true do |t|
    t.string   "company"
    t.string   "city"
    t.string   "country"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foundries", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "location"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fundings", :force => true do |t|
    t.string   "title"
    t.string   "abstract"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "key_people", :force => true do |t|
    t.integer  "activity_id"
    t.integer  "person_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", :force => true do |t|
    t.string   "title"
    t.string   "venue"
    t.integer  "stamp_id"
    t.integer  "number"
    t.integer  "activity_id"
    t.integer  "milestone_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milestones", :force => true do |t|
    t.string   "title"
    t.integer  "activity_id"
    t.integer  "ccn_id"
    t.boolean  "achieved"
    t.integer  "stamp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.integer  "milestone_id"
    t.integer  "amount"
    t.boolean  "invoiced"
    t.boolean  "paid"
    t.integer  "stamp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "section"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "abstract"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", :force => true do |t|
    t.integer  "activity_id"
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stamps", :force => true do |t|
    t.date     "planned"
    t.date     "estimated"
    t.date     "actual"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technologies", :force => true do |t|
    t.integer  "foundry_id"
    t.string   "type"
    t.float    "size"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
