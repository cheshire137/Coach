class DocType < ActiveRecord::Base
  set_primary_key :doc_type_id
  validates_presence_of :doc_type
end
