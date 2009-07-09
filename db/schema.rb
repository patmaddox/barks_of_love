# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090709082617) do

  create_table "courtesy_listings", :force => true do |t|
    t.string   "dog_name"
    t.integer  "age"
    t.string   "sex"
    t.boolean  "neutered",        :default => false
    t.boolean  "vacc_up_to_date", :default => false
    t.boolean  "good_with_dogs",  :default => false
    t.boolean  "good_with_cats",  :default => false
    t.boolean  "good_with_kids",  :default => false
    t.text     "description"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
