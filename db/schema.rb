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

ActiveRecord::Schema.define(version: 20170724134313) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "creci"
    t.string   "email"
    t.string   "street"
    t.integer  "st_number"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "google_plus"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pictures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "description"
    t.integer  "realestate_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "realestates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "re_type"
    t.string   "street"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "category"
    t.float    "price",          limit: 24
    t.text     "description",    limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "cover"
    t.integer  "rooms",                        default: 0
    t.integer  "bathrooms",                    default: 0
    t.integer  "ensuites",                     default: 0
    t.integer  "kitchens",                     default: 0
    t.integer  "toilets",                      default: 0
    t.integer  "living_rooms",                 default: 0
    t.integer  "dining_rooms",                 default: 0
    t.integer  "parking_spaces",               default: 0
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
