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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150713180329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_notifications", force: :cascade do |t|
    t.integer  "user_id",                         null: false
    t.integer  "order_id",                        null: false
    t.text     "from_email",                      null: false
    t.text     "from_name",                       null: false
    t.text     "template_name",                   null: false
    t.text     "locale",                          null: false
    t.datetime "sent_at"
    t.datetime "deliver_at",    default: "now()"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_notifications", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "from_email"
    t.text     "from_name"
    t.text     "template_name"
    t.text     "locale"
    t.datetime "sent_at"
    t.datetime "deliver_at",    default: "now()"
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
