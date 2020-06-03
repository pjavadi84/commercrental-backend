# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_03_231454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "fullname"
    t.string "bussiness_name"
    t.string "business_address"
    t.string "business_city"
    t.string "business_state"
    t.integer "phone_number"
    t.string "email_address"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.integer "item_id"
    t.string "category"
    t.datetime "rental_start_date"
    t.datetime "rental_end_date"
    t.boolean "availability"
    t.integer "price_per_hour"
    t.integer "price_per_day"
    t.integer "price_per_month"
    t.boolean "pickup"
    t.boolean "delivery"
    t.text "additional_comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", null: false
    t.bigint "vendor_id", null: false
    t.index ["customer_id"], name: "index_equipment_on_customer_id"
    t.index ["vendor_id"], name: "index_equipment_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "business_name"
    t.string "business_address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "business_category"
    t.integer "phone_number"
    t.string "email_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "equipment", "customers"
  add_foreign_key "equipment", "vendors"
end
