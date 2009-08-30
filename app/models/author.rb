class Author < ActiveRecord::Base
  validates_presence_of :name
  has_many :docs_teams_authors
  set_primary_key :author_id
end
