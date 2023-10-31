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

ActiveRecord::Schema[7.0].define(version: 2023_10_31_171304) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_collaborators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ref_song_id"
    t.integer "ref_album_id"
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.integer "song_count"
    t.date "date_of_published"
    t.string "type"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "publishers_id"
    t.index ["publishers_id"], name: "index_albums_on_publishers_id"
  end

  create_table "creatives", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.date "first_established_date"
    t.string "uen"
    t.string "country_established_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_collaborators", force: :cascade do |t|
    t.bigint "songs_id", null: false
    t.string "collaborator_type", null: false
    t.bigint "collaborator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["collaborator_type", "collaborator_id"], name: "index_collaborators_on_collaborator"
    t.index ["songs_id"], name: "index_song_collaborators_on_songs_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "language"
    t.string "tag"
    t.interval "duration"
    t.date "first_published_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "album_collaborators", "albums", column: "ref_album_id"
  add_foreign_key "album_collaborators", "songs", column: "ref_song_id"
  add_foreign_key "song_collaborators", "songs", column: "songs_id"
end
