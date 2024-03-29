# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140705173642) do

  create_table "multiplechoices", force: true do |t|
    t.text     "choice1"
    t.text     "choice2"
    t.text     "choice3"
    t.text     "choice4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "question_id"
  end

  create_table "questions", force: true do |t|
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",    default: 1
  end

  create_table "users", force: true do |t|
    t.text     "name"
    t.text     "emailid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
