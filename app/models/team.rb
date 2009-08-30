class Team < ActiveRecord::Base
  validates_presence_of :name
  set_primary_key :team_id
  has_many :players
end
