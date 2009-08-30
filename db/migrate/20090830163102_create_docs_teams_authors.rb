class CreateDocsTeamsAuthors < ActiveRecord::Migration
  def self.up
    create_table :docs_teams_authors do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :docs_teams_authors
  end
end
