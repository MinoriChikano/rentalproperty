class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(property_params)
    if @property.save
      redirect_to properties_path, notice: "物件を登録しました"
    else
      render :new
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      redirect_to properties_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path, notice:"削除しました"
  end

  private

  def property_params
    params.require(:property).permit(:property_name, :rent, :address, :age, :remark)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end