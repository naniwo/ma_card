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

ActiveRecord::Schema.define(version: 20161010083734) do

  create_table "awaken_skill_masters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "card_id",    null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_awaken_skill_masters_on_card_id", unique: true, using: :btree
  end

  create_table "card_attribute_masters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "card_id",        null: false
    t.integer  "attribute_type", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["attribute_type"], name: "index_card_attribute_masters_on_attribute_type", using: :btree
    t.index ["card_id"], name: "index_card_attribute_masters_on_card_id", using: :btree
  end

  create_table "card_list_page_links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "url",        limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "card_masters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                      null: false
    t.string   "other_name",                null: false
    t.string   "img_path"
    t.integer  "rarity",                    null: false
    t.integer  "cost",                      null: false
    t.integer  "arthur_type",               null: false
    t.integer  "skill_type",                null: false
    t.string   "illustrator"
    t.string   "cv"
    t.text     "profile",     limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["arthur_type"], name: "index_card_masters_on_arthur_type", using: :btree
    t.index ["cost"], name: "index_card_masters_on_cost", using: :btree
    t.index ["name"], name: "index_card_masters_on_name", using: :btree
    t.index ["other_name"], name: "index_card_masters_on_other_name", using: :btree
    t.index ["rarity"], name: "index_card_masters_on_rarity", using: :btree
    t.index ["skill_type"], name: "index_card_masters_on_skill_type", using: :btree
  end

  create_table "card_page_links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "card_name",                null: false
    t.text     "url",        limit: 65535, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "card_status_masters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "card_id",                null: false
    t.integer  "init_hp",    default: 0
    t.integer  "final_hp",   default: 0
    t.integer  "init_atk",   default: 0
    t.integer  "final_atk",  default: 0
    t.integer  "init_mat",   default: 0
    t.integer  "final_mat",  default: 0
    t.integer  "init_heal",  default: 0
    t.integer  "final_heal", default: 0
    t.integer  "buff_atk",   default: 0
    t.integer  "buff_mat",   default: 0
    t.integer  "buff_def",   default: 0
    t.integer  "buff_mde",   default: 0
    t.integer  "debuff_atk", default: 0
    t.integer  "debuff_mat", default: 0
    t.integer  "debuff_def", default: 0
    t.integer  "debuff_mde", default: 0
    t.integer  "buff_heal",  default: 0
    t.integer  "regene",     default: 0
    t.integer  "turn",       default: 0
    t.integer  "draw",       default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["buff_atk"], name: "index_card_status_masters_on_buff_atk", using: :btree
    t.index ["buff_def"], name: "index_card_status_masters_on_buff_def", using: :btree
    t.index ["buff_heal"], name: "index_card_status_masters_on_buff_heal", using: :btree
    t.index ["buff_mat"], name: "index_card_status_masters_on_buff_mat", using: :btree
    t.index ["buff_mde"], name: "index_card_status_masters_on_buff_mde", using: :btree
    t.index ["card_id"], name: "index_card_status_masters_on_card_id", unique: true, using: :btree
    t.index ["debuff_atk"], name: "index_card_status_masters_on_debuff_atk", using: :btree
    t.index ["debuff_def"], name: "index_card_status_masters_on_debuff_def", using: :btree
    t.index ["debuff_mat"], name: "index_card_status_masters_on_debuff_mat", using: :btree
    t.index ["debuff_mde"], name: "index_card_status_masters_on_debuff_mde", using: :btree
    t.index ["draw"], name: "index_card_status_masters_on_draw", using: :btree
    t.index ["final_atk"], name: "index_card_status_masters_on_final_atk", using: :btree
    t.index ["final_heal"], name: "index_card_status_masters_on_final_heal", using: :btree
    t.index ["final_hp"], name: "index_card_status_masters_on_final_hp", using: :btree
    t.index ["final_mat"], name: "index_card_status_masters_on_final_mat", using: :btree
    t.index ["init_atk"], name: "index_card_status_masters_on_init_atk", using: :btree
    t.index ["init_heal"], name: "index_card_status_masters_on_init_heal", using: :btree
    t.index ["init_hp"], name: "index_card_status_masters_on_init_hp", using: :btree
    t.index ["init_mat"], name: "index_card_status_masters_on_init_mat", using: :btree
    t.index ["regene"], name: "index_card_status_masters_on_regene", using: :btree
    t.index ["turn"], name: "index_card_status_masters_on_turn", using: :btree
  end

  create_table "skill_masters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "card_id",    null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_skill_masters_on_card_id", unique: true, using: :btree
  end

end
