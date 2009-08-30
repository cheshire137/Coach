class DocsTeamsAuthor < ActiveRecord::Base
  set_table_name 'docs_teams_authors'
  set_primary_keys :doc_id, :team_id, :author_id
  belongs_to :docs
  belongs_to :teams
  belongs_to :authors
end
