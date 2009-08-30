class CreateDocsTags < ActiveRecord::Migration
  def self.up
    create_table :docs_tags do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :docs_tags
  end
end
