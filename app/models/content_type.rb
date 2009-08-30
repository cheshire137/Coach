class ContentType < ActiveRecord::Base
  set_primary_key :content_type_id
  validates_presence_of :content_type
end
