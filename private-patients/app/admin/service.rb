ActiveAdmin.register Service do

  # string   "title"
  # string   "department"
  # string   "specialty"
  # text     "body"
  # string   "banner"
  # integer  "metatag_id"
  # text     "sidebar"
  
  # as with Rails controllers, white list actions
  permit_params :title, :body, :department, :specialty, :banner, :sidebar, :metatag_id
  
  # enable the right-hand sidebar to search and filter on certain fields
  filter :title
  filter :department
  filter :specialty

end