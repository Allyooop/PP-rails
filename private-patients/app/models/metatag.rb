class Metatag < ActiveRecord::Base
  
   # string   "title"
   # string   "description"
   # string   "keywords"
   # string   "author"
  
  belongs_to :service
end
