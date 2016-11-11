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

ActiveRecord::Schema.define(version: 20161111060122) do

  create_table "audio_files", force: :cascade do |t|
    t.string   "title"
    t.string   "part"
    t.binary   "audio"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "mp3_file_name"
    t.string   "mp3_content_type"
    t.integer  "mp3_file_size"
    t.datetime "mp3_updated_at"
    t.integer  "performance_id"
    t.index ["performance_id"], name: "index_audio_files_on_performance_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "performances", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "purchase_link"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "event_pic_file_name"
    t.string   "event_pic_content_type"
    t.integer  "event_pic_file_size"
    t.datetime "event_pic_updated_at"
    t.string   "youtube_link"
  end

  create_table "supporters", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "website_url"
    t.string   "kind"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
