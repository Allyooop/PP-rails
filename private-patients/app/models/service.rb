class Service < ActiveRecord::Base
  
  # string   "title"
  # string   "department"
  # string   "specialty"
  # text     "body"
  # string   "banner"
  # integer  "metatag_id"
  # text     "sidebar"
  
  has_one :metatag
  
  accepts_nested_attributes_for :metatag, allow_destroy: true
end
