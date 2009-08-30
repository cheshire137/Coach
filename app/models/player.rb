class Player < ActiveRecord::Base
  set_primary_key :player_id
  belongs_to :team
  validates_presence_of :name, :position, :number, :class
end
