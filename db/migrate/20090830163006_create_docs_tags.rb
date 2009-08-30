class CreateDocsTags < ActiveRecord::Migration
  def self.up
    create_table(:docs_tags, :id => false) do |t|
      t.column :doc_id, :integer
      t.column :tag_id, :integer
    end
    execute "ALTER TABLE docs_tags ADD PRIMARY KEY (doc_id, tag_id);"
  end

  def self.down
    drop_table :docs_tags
  end
end
