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

ActiveRecord::Schema[8.0].define(version: 2025_04_16_092353) do
  create_table "music_classes", force: :cascade do |t|
    t.integer "session_id"
    t.integer "instructor_id"
    t.integer "location_id"
    t.integer "music_class_series_id"
    t.string "name"
    t.text "description"
    t.integer "level"
    t.string "day"
    t.integer "lesson_count"
    t.integer "duration"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
