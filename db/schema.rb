# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_21_223154) do

  create_table "posts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "social_media_id"
    t.index ["social_media_id"], name: "index_posts_on_social_media_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "social_media", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

  add_foreign_key "posts", "social_media", column: "social_media_id"
  add_foreign_key "posts", "users"
end
