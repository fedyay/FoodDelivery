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

ActiveRecord::Schema.define(version: 20160716131956) do

  create_table "carts", force: :cascade do |t|
    t.text     "dishes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rest_id"
  end

  add_index "categories", ["rest_id"], name: "index_categories_on_rest_id"

  create_table "dishes", force: :cascade do |t|
    t.string   "title"
    t.float    "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "rest_id"
    t.integer  "counter"
    t.integer  "category_id"
  end

  add_index "dishes", ["category_id"], name: "index_dishes_on_category_id"
  add_index "dishes", ["rest_id"], name: "index_dishes_on_rest_id"

  create_table "rests", force: :cascade do |t|
    t.string   "title"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
