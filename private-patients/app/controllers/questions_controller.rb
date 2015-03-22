class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all.order(:priority)
    # order by priority highest first... index that as well?
  end
  
end
