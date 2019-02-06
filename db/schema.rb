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

ActiveRecord::Schema.define(version: 20180304035017) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "metatypes", force: :cascade do |t|
    t.string "name"
    t.integer "body_start"
    t.integer "body_max"
    t.integer "agility_start"
    t.integer "agility_max"
    t.integer "reaction_start"
    t.integer "reaction_max"
    t.integer "strength_start"
    t.integer "strength_max"
    t.integer "willpower_start"
    t.integer "willpower_max"
    t.integer "logic_start"
    t.integer "logic_max"
    t.integer "intuition_start"
    t.integer "intuition_max"
    t.integer "charisma_start"
    t.integer "charisma_max"
    t.integer "edge_start"
    t.integer "edge_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string "name"
    t.string "concept"
    t.integer "body"
    t.integer "agility"
    t.integer "reaction"
    t.integer "strength"
    t.integer "willpower"
    t.integer "logic"
    t.integer "intuition"
    t.integer "charisma"
    t.float "essence"
    t.integer "edge"
    t.integer "resonance"
    t.integer "magic"
    t.integer "karma"
    t.bigint "user_id"
    t.bigint "metatype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["metatype_id"], name: "index_runners_on_metatype_id"
    t.index ["user_id"], name: "index_runners_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
