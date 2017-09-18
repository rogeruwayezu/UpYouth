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

ActiveRecord::Schema.define(version: 20170918174108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "trackable_type"
    t.integer  "trackable_id"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "key"
    t.text     "parameters"
    t.string   "recipient_type"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree
  end

  create_table "applications", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "cover_letter"
    t.integer  "user_id"
    t.string   "duration"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "hired"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "school"
    t.date     "date_attended"
    t.string   "degree"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
  end

  create_table "employment_histories", force: :cascade do |t|
    t.string   "company"
    t.string   "location"
    t.string   "position"
    t.string   "role"
    t.date     "period"
    t.text     "responsibilities"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id",            null: false
    t.integer  "actor_id"
    t.string   "notify_type",        null: false
    t.string   "target_type"
    t.integer  "target_id"
    t.string   "second_target_type"
    t.integer  "second_target_id"
    t.string   "third_target_type"
    t.integer  "third_target_id"
    t.datetime "read_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["user_id", "notify_type"], name: "index_notifications_on_user_id_and_notify_type", using: :btree
    t.index ["user_id"], name: "index_notifications_on_user_id", using: :btree
  end

  create_table "other_experiences", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "title"
    t.text     "overview"
    t.integer  "category_id"
    t.string   "file"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "post_categories", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "post_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "budget"
    t.integer  "user_id"
    t.text     "skills"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.date     "deadline"
  end

  create_table "profiles", force: :cascade do |t|
    t.text     "overview"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
    t.string   "profile_picture"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "role_id"
    t.string   "password_digest"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
