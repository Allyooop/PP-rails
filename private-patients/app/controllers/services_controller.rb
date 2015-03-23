class ServicesController < ApplicationController
  
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    # @metatag = @service.metatag.find(params[:id])
  end
  
end
