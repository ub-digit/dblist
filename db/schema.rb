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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120612124911) do

  create_table "alternate_titles", :force => true do |t|
    t.integer  "db_id"
    t.text     "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.integer  "category_source_id"
    t.text     "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "hash_value"
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "db_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_sources", :force => true do |t|
    t.text     "code"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications", :force => true do |t|
    t.integer  "db_id"
    t.integer  "keyword_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "priority"
  end

  create_table "dbs", :force => true do |t|
    t.text     "title"
    t.text     "marcxml"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "libris_id"
    t.text     "verde_id"
    t.text     "verde_data"
    t.text     "norm_title"
  end

  create_table "descriptions", :force => true do |t|
    t.integer  "db_id"
    t.text     "description"
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keyword_sources", :force => true do |t|
    t.text     "code"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keywords", :force => true do |t|
    t.integer  "keyword_source_id"
    t.text     "keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.text     "hash_value"
  end

  create_table "publishers", :force => true do |t|
    t.integer  "db_id"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urls", :force => true do |t|
    t.integer  "db_id"
    t.text     "url"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

end
