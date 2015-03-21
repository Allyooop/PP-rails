class QuestionsController < ApplicationController
  
  def index
    @questions = Question.all
    # order by priority highest first... index that as well?
  end
  
end
