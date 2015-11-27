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

ActiveRecord::Schema.define(version: 20151127071107) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "posts_count", default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "post_tag_refs", force: :cascade do |t|
    t.integer  "Post_id"
    t.integer  "Tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_tag_refs", ["Post_id"], name: "index_post_tag_refs_on_Post_id"
  add_index "post_tag_refs", ["Tag_id"], name: "index_post_tag_refs_on_Tag_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "content"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "published"
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string   "name"
    t.integer  "posts_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_infos", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.text     "profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
