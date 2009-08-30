class DocsTag < ActiveRecord::Base
  has_many :docs_teams_authors
  set_primary_keys :doc_id, :tag_id
  belongs_to :docs
  belongs_to :tags
end
