class ServicesController < ApplicationController
  
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    @metatag = @service.metatag
    @question = @service.question
  end
  
end