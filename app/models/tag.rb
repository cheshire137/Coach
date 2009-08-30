class Tag < ActiveRecord::Base
  validates_presence_of :tag
  set_primary_key :tag_id
  validates_uniqueness_of :tag
  has_many :docs_tags
end
