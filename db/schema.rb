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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110705113730) do

  create_table "languages", :force => true do |t|
    t.string   "lang_code"
    t.string   "lang_name"
    t.string   "short_code"
    t.string   "i18n_identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "letter_campaigns", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "letters", :force => true do |t|
    t.integer  "letter_campaign_id"
    t.integer  "language_id"
    t.integer  "supporter_id"
    t.string   "country_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
