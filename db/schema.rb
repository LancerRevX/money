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

ActiveRecord::Schema[8.1].define(version: 2026_07_21_162255) do
  create_table "records", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.date "date"
    t.datetime "updated_at", null: false
    t.decimal "value", precision: 11, scale: 2
  end

  create_table "records_tags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "record_id"
    t.integer "tag_id"
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_records_tags_on_record_id"
    t.index ["tag_id"], name: "index_records_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "parent_id"
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_tags_on_parent_id"
  end
end
