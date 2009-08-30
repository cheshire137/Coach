class CreateDocTypes < ActiveRecord::Migration
  def self.up
    create_table(:doc_types, :primary_key => :doc_type_id) do |t|
      t.column :doc_type, :string
    end
  end

  def self.down
    drop_table :doc_types
  end
end
