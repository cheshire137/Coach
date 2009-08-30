class CreateDocsTeamsAuthors < ActiveRecord::Migration
  def self.up
    create_table(:docs_teams_authors, :id => false) do |t|
      t.column :doc_id, :integer
      t.column :team_id, :integer
      t.column :author_id, :integer
    end
    execute "ALTER TABLE docs_teams_authors ADD PRIMARY KEY (doc_id, team_id, author_id);"
  end

  def self.down
    drop_table :docs_teams_authors
  end
end
