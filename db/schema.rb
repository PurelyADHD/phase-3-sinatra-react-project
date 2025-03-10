# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_13_211232) do

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "price"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "comment"
    t.integer "restaurant_id"
    t.integer "user_id"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.boolean "logged_in"
  end

  add_foreign_key "reviews", "restaurants"
  add_foreign_key "reviews", "users"
end
