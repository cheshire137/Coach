class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table(:teams, :primary_key => :team_id) do |t|
      t.column :name, :string
      t.column :description, :text
    end
  end

  def self.down
    drop_table :teams
  end
end
