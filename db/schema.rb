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

ActiveRecord::Schema.define(version: 20131219194953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string  "name",         null: false
    t.string  "contact_info", null: false
    t.string  "birthplace",   null: false
    t.integer "style_id",     null: false
  end

  create_table "artworks", force: true do |t|
    t.string  "title",         null: false
    t.integer "artist_id",     null: false
    t.date    "created_date",  null: false
    t.date    "listed_date",   null: false
    t.decimal "asking_price",  null: false
    t.integer "medium_id",     null: false
    t.date    "purchase_date"
    t.integer "customer_id"
    t.decimal "selling_price"
  end

  create_table "collection_artworks", force: true do |t|
    t.integer "collection_id", null: false
    t.integer "artwork_id",    null: false
  end

  create_table "collections", force: true do |t|
    t.string "name", null: false
  end

  create_table "customers", force: true do |t|
    t.string "name",         null: false
    t.string "contact_info", null: false
  end

  create_table "favorite_collections", force: true do |t|
    t.integer "collection_id", null: false
    t.integer "customer_id",   null: false
  end

  create_table "media", force: true do |t|
    t.string "name", null: false
  end

  create_table "styles", force: true do |t|
    t.string "name", null: false
  end

end
