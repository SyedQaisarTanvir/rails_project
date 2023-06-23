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

ActiveRecord::Schema.define(version: 2023_06_22_125811) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "candidates", force: :cascade do |t|
    t.integer "candidate_id"
    t.string "candidate_name"
    t.string "candidate_email"
    t.string "candidate_phone"
    t.string "candidate_cv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer "feedback_id"
    t.string "feedback_message"
    t.string "feedback_person"
    t.string "feedback_desg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "interviewer_id"
    t.integer "Candidate_id"
    t.index ["Candidate_id"], name: "index_feedbacks_on_Candidate_id"
    t.index ["interviewer_id"], name: "index_feedbacks_on_interviewer_id"
  end

  create_table "interviewers", force: :cascade do |t|
    t.integer "interviewer_id"
    t.string "name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organizer_id"
    t.index ["organizer_id"], name: "index_interviewers_on_organizer_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.integer "interview_id"
    t.string "interview_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "interviewer_id"
    t.integer "candidate_id"
    t.index ["candidate_id"], name: "index_interviews_on_candidate_id"
    t.index ["interviewer_id"], name: "index_interviews_on_interviewer_id"
  end

  create_table "organizers", force: :cascade do |t|
    t.integer "organizer_id"
    t.string "organizer_name"
    t.string "organizer_email"
    t.string "organizer_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
