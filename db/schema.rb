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

ActiveRecord::Schema.define(version: 20190524220347) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "products_count"
  end

  create_table "concerns", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "example_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_concerns", force: :cascade do |t|
    t.integer "concern_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "email"
    t.string "firstname"
    t.string "lastname"
    t.string "profile_photo"
    t.date "birthday"
    t.string "address_street"
    t.string "address_city"
    t.string "address_state"
    t.string "address_zipcode"
    t.text "notes"
    t.boolean "optin_email"
    t.boolean "optin_texts"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "address_street_latitude"
    t.float "address_street_longitude"
    t.string "address_street_formatted_address"
  end

  create_table "product_concerns", force: :cascade do |t|
    t.integer "concern_id"
    t.integer "product_id"
    t.boolean "good_for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.float "average_price"
    t.string "product_image"
    t.string "purchase_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routine_products", force: :cascade do |t|
    t.integer "routine_id"
    t.integer "product_id"
    t.integer "use_frequency_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routines", force: :cascade do |t|
    t.integer "customer_id"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usefrequencies", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
