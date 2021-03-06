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

ActiveRecord::Schema.define(version: 20170624010159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  limit: 20, null: false
    t.integer  "country_id",            null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "cities", ["country_id"], name: "index_cities_on_country_id", using: :btree

  create_table "contracts", force: :cascade do |t|
    t.string   "number_contract", limit: 20,            null: false
    t.integer  "status",                                null: false
    t.date     "open_date",                             null: false
    t.date     "pay_date"
    t.money    "cost",                        scale: 2, null: false
    t.string   "dop_info",        limit: 100
    t.string   "payment",         limit: 20,            null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "country_name", limit: 20, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "edrives", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elmotors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.integer  "stars"
    t.string   "hotel_name",    limit: 50, null: false
    t.string   "rooms",         limit: 20, null: false
    t.string   "food",          limit: 20
    t.string   "internet",      limit: 20
    t.string   "parking",       limit: 10
    t.string   "sport",         limit: 50
    t.string   "entertainment", limit: 50
    t.string   "beach",         limit: 20
    t.string   "service",       limit: 50
    t.integer  "city_id",                  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "hotels", ["city_id"], name: "index_hotels_on_city_id", using: :btree

  create_table "operators", force: :cascade do |t|
    t.string   "fio",             limit: 50,  null: false
    t.string   "number_passport", limit: 12,  null: false
    t.date     "birth_date",                  null: false
    t.string   "adress",          limit: 100, null: false
    t.integer  "sex",                         null: false
    t.string   "number_telefon",  limit: 16,  null: false
    t.string   "email",           limit: 30,  null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "reducers", force: :cascade do |t|
    t.string   "model",       null: false
    t.string   "powers",      null: false
    t.string   "input_type",  null: false
    t.string   "output_type", null: false
    t.string   "ratio",       null: false
    t.string   "ip",          null: false
    t.string   "volume",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.date     "open_date",               null: false
    t.date     "close_date"
    t.string   "dop_info",    limit: 100
    t.integer  "status",                  null: false
    t.integer  "tourist_id"
    t.integer  "operator_id"
    t.integer  "tour_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "requests", ["operator_id"], name: "index_requests_on_operator_id", using: :btree
  add_index "requests", ["tour_id"], name: "index_requests_on_tour_id", using: :btree
  add_index "requests", ["tourist_id"], name: "index_requests_on_tourist_id", using: :btree

  create_table "restplaces", force: :cascade do |t|
    t.string   "name",       limit: 100, null: false
    t.integer  "country_id",             null: false
    t.integer  "city_id",                null: false
    t.integer  "hotel_id",               null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "restplaces", ["city_id"], name: "index_restplaces_on_city_id", using: :btree
  add_index "restplaces", ["country_id"], name: "index_restplaces_on_country_id", using: :btree
  add_index "restplaces", ["hotel_id"], name: "index_restplaces_on_hotel_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "review_text", limit: 500, null: false
    t.date     "review_date",             null: false
    t.integer  "tourist_id",              null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "reviews", ["tourist_id"], name: "index_reviews_on_tourist_id", using: :btree

  create_table "tourists", force: :cascade do |t|
    t.string   "fio",                  limit: 50,  null: false
    t.string   "number_passport",      limit: 12,  null: false
    t.date     "birth_date",                       null: false
    t.string   "adress",               limit: 100, null: false
    t.integer  "sex",                              null: false
    t.string   "number_telefon",       limit: 16,  null: false
    t.string   "email",                limit: 30,  null: false
    t.string   "number_interpassport", limit: 30
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "tours", force: :cascade do |t|
    t.integer  "adult",                  null: false
    t.integer  "children"
    t.date     "start_date",             null: false
    t.date     "end_date",               null: false
    t.money    "cost",         scale: 2, null: false
    t.integer  "restplace_id",           null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "tours", ["restplace_id"], name: "index_tours_on_restplace_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
