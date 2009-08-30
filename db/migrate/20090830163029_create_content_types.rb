class CreateContentTypes < ActiveRecord::Migration
  def self.up
    create_table(:content_types, :primary_key => :content_type_id) do |t|
      t.column :content_type, :string
    end
  end

  def self.down
    drop_table :content_types
  end
end
