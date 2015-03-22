ActiveAdmin.register Question do


  # as with Rails controllers, white list actions
  permit_params :title, :body, :priority
  
  # enable the right-hand sidebar to search and filter on certain fields
  filter :title
  filter :body
  filter :priority

end