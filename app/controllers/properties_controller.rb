class PropertiesController < ApplicationController
  def index

  end

  def new
    @property = Property.new
  end

  def create
    
  end

  private

  def property_params
    params.require(:property).permit()
  end
end
