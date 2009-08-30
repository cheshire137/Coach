class CreateAuthors < ActiveRecord::Migration
  def self.up
    create_table(:authors, :primary_key => :author_id) do |t|
      t.column :name, :string
    end
  end

  def self.down
    drop_table :authors
  end
end
