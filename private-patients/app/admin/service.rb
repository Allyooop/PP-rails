ActiveAdmin.register Service do

  # string   "title"
  # string   "department"
  # string   "specialty"
  # text     "body"
  # string   "banner"
  # integer  "metatag_id"
  # text     "sidebar"
  
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    
    f.inputs do
      f.has_many :metatag do |a|
        a.input :title
        a.input :description
        a.input :keywords
        a.input :author
        a.actions
      end
    end
      
    f.inputs do
      f.has_many :question do |q|
        q.input :title
        q.input :body
        q.input :priority
        q.input :_destroy, :as=>:boolean, :required => false, :label=>'Delete?'
        q.actions
      end
    end
      

    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
  
  # as with Rails controllers, white list actions
  permit_params :title, :body, :department, :specialty, :banner, :sidebar, :metatag_id, :question_id,
  metatag_attributes: [:title, :description, :keywords, :author],
  question_attributes: [:title, :body, :priority]
  
  # the metatag_attributes bit is to enable the service model to save the metatag model edits through the form
  
  # enable the right-hand sidebar to search and filter on certain fields
  filter :title
  filter :department
  filter :specialty

end