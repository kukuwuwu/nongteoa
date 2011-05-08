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

ActiveRecord::Schema.define(:version => 20110418115220) do

  create_table "cities", :force => true do |t|
    t.string   "title"
    t.integer  "province_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "content_people", :force => true do |t|
    t.integer  "enterprise_id"
    t.string   "name"
    t.string   "position"
    t.string   "phone_num"
    t.string   "fax_num"
    t.string   "mail"
    t.string   "address"
    t.string   "zip_code"
    t.integer  "is_main"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enterprises", :force => true do |t|
    t.integer  "admin_id"
    t.string   "title"
    t.integer  "province_id"
    t.integer  "city_id"
    t.integer  "industry_id"
    t.string   "fax_num"
    t.string   "phone_num"
    t.string   "address"
    t.string   "zip_code"
    t.string   "mail"
    t.string   "site"
    t.string   "qq"
    t.string   "remark"
    t.string   "trademark"
    t.text     "product"
    t.text     "introduction"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provinces", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
