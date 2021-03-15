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

ActiveRecord::Schema.define(:version => 20210315214251) do

  create_table "students", :force => true do |t|
    t.string   "title",       :default => "", :null => false
    t.string   "first_name",  :default => "", :null => false
    t.string   "middle_name", :default => "", :null => false
    t.string   "last_name",   :default => "", :null => false
    t.string   "email",                       :null => false
    t.date     "birth_date",                  :null => false
    t.string   "gender",                      :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "titles", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
