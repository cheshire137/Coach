class CreateDocs < ActiveRecord::Migration
  def self.up
    create_table(:docs, :primary_key => :doc_id) do |t|
      t.column :path, :string
      t.column :doc_type_id, :integer
      t.column :content_type_id, :integer
      t.column :title, :string
      t.column :summary, :text
      t.column :date, :date
      t.column :location, :string
    end
  end

  def self.down
    drop_table :docs
  end
end
