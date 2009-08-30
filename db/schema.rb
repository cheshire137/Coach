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

ActiveRecord::Schema.define(:version => 20090830164205) do

  create_table "authors", :primary_key => "author_id", :force => true do |t|
    t.string "name"
  end

  create_table "content_types", :primary_key => "content_type_id", :force => true do |t|
    t.string "name"
  end

  create_table "doc_types", :primary_key => "doc_type_id", :force => true do |t|
    t.string "name"
  end

  create_table "docs", :primary_key => "doc_id", :force => true do |t|
    t.string  "path"
    t.integer "doc_type_id"
    t.integer "content_type_id"
    t.string  "title"
    t.text    "summary"
    t.date    "date"
    t.string  "location"
  end

  create_table "docs_tags", :id => false, :force => true do |t|
    t.integer "doc_id", :null => false
    t.integer "tag_id", :null => false
  end

  create_table "docs_teams_authors", :id => false, :force => true do |t|
    t.integer "doc_id",    :null => false
    t.integer "team_id",   :null => false
    t.integer "author_id", :null => false
  end

# Could not dump table "players" because of following StandardError
#   Unknown type 'player_class' for column 'class'

  create_table "tags", :primary_key => "tag_id", :force => true do |t|
    t.string "name"
  end

  create_table "teams", :primary_key => "team_id", :force => true do |t|
    t.string "name"
    t.text   "description"
  end

end
