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

ActiveRecord::Schema[7.0].define(version: 2024_02_06_220812) do
  create_table "accounts", id: :binary, force: :cascade do |t|
    t.integer "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trans_actions", id: :binary, force: :cascade do |t|
    t.integer "amount"
    t.binary "account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_trans_actions_on_account_id"
  end

  add_foreign_key "trans_actions", "accounts"
end
