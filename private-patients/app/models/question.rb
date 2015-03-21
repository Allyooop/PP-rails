class Question < ActiveRecord::Base
  
  # title:string
  # body:text
  # priority:integer
  
  validates :title, :body, presence: true
  # add validation to title length and body length
  
end
