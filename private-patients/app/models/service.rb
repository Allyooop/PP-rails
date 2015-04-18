class Service < ActiveRecord::Base
  
  # string   "title"
  # string   "department"
  # string   "specialty"
  # text     "body"
  # string   "banner"
  # integer  "metatag_id"
  # text     "sidebar"
  # integer "question_id"
  
  has_one :metatag
  has_many :question
  
  validates :title, :body, presence: true
  
  accepts_nested_attributes_for :metatag, :question, allow_destroy: true
end