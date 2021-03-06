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

ActiveRecord::Schema.define(version: 20170625112703) do

  create_table "degrees", force: :cascade do |t|
    t.string "name"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "expiration_date"
    t.string   "location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
  end

  create_table "jobs_skills_links", force: :cascade do |t|
    t.integer "job_id"
    t.integer "skill_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "address"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "description"
    t.string   "avatar"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "description"
    t.text   "recommendation"
  end

  create_table "refugees", force: :cascade do |t|
    t.string  "name"
    t.date    "birthday"
    t.boolean "gender"
    t.string  "nationality"
    t.string  "address"
    t.string  "email"
    t.string  "phone"
    t.string  "additional_info"
    t.integer "degree_id"
    t.string  "password_digest"
    t.string  "avatar"
  end

  create_table "refugees_jobs_links", force: :cascade do |t|
    t.integer "refugee_id"
    t.integer "job_id"
  end

  create_table "refugees_languages_links", force: :cascade do |t|
    t.integer "language_id"
    t.integer "refugee_id"
  end

  create_table "refugees_professions_links", force: :cascade do |t|
    t.integer "profession_id"
    t.integer "refugee_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
  end

  create_table "skills_refugees_links", force: :cascade do |t|
    t.integer "refugee_id"
    t.integer "skill_id"
  end

end
