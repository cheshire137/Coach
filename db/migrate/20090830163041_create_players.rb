class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table(:players, :primary_key => :player_id) do |t|
      t.column :team_id, :integer
      t.column :name, :string
      t.column :position, :string
      t.column :number, :integer
      t.column :class, :string
      t.column :height, :string
      t.column :weight, :string
    end
  end

  def self.down
    drop_table :players
  end
end
