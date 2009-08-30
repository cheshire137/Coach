class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table(:players, :primary_key => :player_id) do |t|
      t.column :team_id, :integer
      t.column :name, :string
      t.column :number, :integer
      t.column :height, :string
      t.column :weight, :string
    end
    execute "CREATE TYPE player_class AS ENUM ('freshman', 'sophomore', 'junior', 'senior');"
    execute "ALTER TABLE players ADD COLUMN class player_class;"
    execute "CREATE TYPE player_position AS ENUM ('center', 'offensive guard', 'offensive tackle', 'tight end', 'wide receiver', 'fullback', 'running back', 'quarterback', 'defensive end', 'defensive tackle', 'nose guard', 'linebacker', 'cornerback', 'safety', 'nickelback', 'dimeback', 'kicker', 'holder', 'long snapper', 'kick returner', 'punter', 'upback', 'punt returner', 'gunner', 'wedge buster');"
    execute "ALTER TABLE players ADD COLUMN position player_position;"
  end

  def self.down
    drop_table :players
  end
end
