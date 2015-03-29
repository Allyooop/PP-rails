ActiveAdmin.register Metatag do

   # string   "title"
   # string   "description"
   # string   "keywords"
   # string   "author"
   # 
  
  # as with Rails controllers, white list actions
  permit_params :title, :description, :keywords, :author, :service_id
  
  # enable the right-hand sidebar to search and filter on certain fields
  filter :title
  filter :description
  filter :keywords
  filter :author
  filter :service

end