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

ActiveRecord::Schema.define(:version => 20130506161949) do

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.integer  "class"
    t.integer  "subclass"
    t.integer  "race"
    t.integer  "subrace"
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.string   "background"
    t.text     "background_notes"
    t.text     "equipment"
    t.integer  "hit_points"
    t.integer  "hit_dice_number"
    t.integer  "hit_dice_type"
    t.integer  "armor_class"
    t.integer  "initiative_mod"
    t.integer  "melee_attack_mod"
    t.integer  "ranged_attack_mod"
    t.integer  "magical_ability_mod"
    t.integer  "saving_throw_dc"
    t.string   "height"
    t.string   "weight"
    t.text     "physical_description"
    t.text     "goals_and_motivations"
    t.integer  "alignment"
    t.text     "personality"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "user_id"
    t.integer  "game_id"
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "password"
  end

end
