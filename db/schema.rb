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

ActiveRecord::Schema.define(version: 20160925101337) do

  create_table "casts", force: :cascade do |t|
    t.string   "cast",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.string   "image_url",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_likes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_structures", force: :cascade do |t|
    t.integer  "product_id",   limit: 4
    t.string   "subtitle",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "story_number", limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "day",         limit: 4
    t.integer  "time",        limit: 4
    t.string   "company",     limit: 255
    t.text     "detail",      limit: 65535
    t.text     "twitter",     limit: 65535
    t.text     "amazon",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "director",    limit: 255
    t.string   "playwrite",   limit: 255
    t.text     "site",        limit: 65535
    t.integer  "likes_count", limit: 4
    t.integer  "year",        limit: 4
    t.integer  "month",       limit: 4
    t.text     "wikipedia",   limit: 65535
    t.integer  "date",        limit: 4
  end

  create_table "products_casts", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "cast_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_comments", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "review_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comment",    limit: 65535
    t.string   "nickname",   limit: 255
  end

  create_table "review_likes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "review_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "product_id",  limit: 4
    t.text     "review",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title",       limit: 255
    t.decimal  "rate",                      precision: 2, scale: 1
    t.integer  "likes_count", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "nickname",               limit: 255,   default: "", null: false
    t.integer  "gender",                 limit: 4
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.text     "introduction",           limit: 65535
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",                 limit: 1,     default: 0,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
