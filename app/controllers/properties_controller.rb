class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    Property.create(property_params)
    redirect_to new_property_path
  end

  def show
    @property = Property.find(params[:id])
  end

  private

  def property_params
    params.require(:property).permit(:property_name, :rent, :address, :age, :remark)
  end
end
