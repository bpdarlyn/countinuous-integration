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

ActiveRecord::Schema.define(version: 20171025185043) do

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.date "event_date"
    t.integer "type_of_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historical_boxes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "ticket_box_id"
    t.boolean "status"
    t.decimal "available", precision: 10
    t.decimal "not_available", precision: 10
    t.integer "inflow_detail_id"
    t.integer "outflow_integer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_box_id"], name: "index_historical_boxes_on_ticket_box_id"
  end

  create_table "inflow_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "product_id"
    t.integer "ticket_boxes_id"
    t.decimal "start_number", precision: 10
    t.decimal "end_number", precision: 10
    t.decimal "quantity", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_inflow_details_on_product_id"
  end

  create_table "inflows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "inflow_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orden_request_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "orden_request_id"
    t.bigint "product_id"
    t.decimal "quantity", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden_request_id"], name: "index_orden_request_details_on_orden_request_id"
    t.index ["product_id"], name: "index_orden_request_details_on_product_id"
  end

  create_table "orden_requests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "date_orden"
    t.string "request_number"
    t.string "in_charge"
    t.string "event"
    t.decimal "price_by_ticket", precision: 10
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outflow_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "outflow_id"
    t.bigint "product_id"
    t.decimal "quantity", precision: 10
    t.decimal "start_number", precision: 10
    t.decimal "end_number", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["outflow_id"], name: "index_outflow_details_on_outflow_id"
    t.index ["product_id"], name: "index_outflow_details_on_product_id"
  end

  create_table "outflows", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date "outflow_date"
    t.integer "orden_request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.bigint "type_of_product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_of_product_id"], name: "index_products_on_type_of_product_id"
  end

  create_table "ticket_boxes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "nro"
    t.integer "quantity"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_ticket_boxes_on_product_id"
  end

  create_table "type_of_events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_of_products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "historical_boxes", "ticket_boxes"
  add_foreign_key "inflow_details", "products"
  add_foreign_key "orden_request_details", "orden_requests"
  add_foreign_key "orden_request_details", "products"
  add_foreign_key "outflow_details", "outflows"
  add_foreign_key "outflow_details", "products"
  add_foreign_key "products", "type_of_products"
  add_foreign_key "ticket_boxes", "products"
end
