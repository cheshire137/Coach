class Doc < ActiveRecord::Base
  set_primary_key :doc_id
  has_many :docs_tags
  has_many :docs_teams_authors
  validates_presence_of :path, :doc_type_id, :content_type_id, :title, :date, :location
end
