class Question < ActiveRecord::Base
  
  # title:string
  # body:text
  # priority:integer
  
  belongs_to :service
  # belongs_to :faq
  
  validates :title, :body, presence: true
  # add validation to title length and body length
  
end
