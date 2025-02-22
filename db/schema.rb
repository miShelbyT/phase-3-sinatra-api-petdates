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

ActiveRecord::Schema.define(version: 2023_02_24_005025) do

  create_table "meetups", force: :cascade do |t|
    t.datetime "time"
    t.string "location"
  end

  create_table "pet_meets", force: :cascade do |t|
    t.integer "pet_id"
    t.integer "meetup_id"
    t.index ["meetup_id"], name: "index_pet_meets_on_meetup_id"
    t.index ["pet_id"], name: "index_pet_meets_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "species"
    t.string "breed"
    t.string "size"
    t.date "birthdate"
    t.integer "user_id"
    t.string "image_url"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.string "phone_number"
    t.string "email"
  end

  add_foreign_key "pet_meets", "meetups"
  add_foreign_key "pet_meets", "pets"
  add_foreign_key "pets", "users"
end
