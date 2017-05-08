require 'pry'
class PropertiesController < ApplicationController
  before_action :authenticate_user!, only: ["show"]

  def index

    @user = current_user
    @properties = Property.all
    @property = Property.new
  end

  def show
    @user = current_user
    @property = Property.find(params[:id])


    end

  def create
    @user = current_user
    @property = Property.new(property_params)

    if @property.save
      flash[:notice] = "Property uploaded successfully!"
      redirect_to properties_path
    else
      @properties = Property.all
      flash.now[:notice] = @property.errors.full_messages.to_sentence
      render :index
    end
  end

  def edit
    @property = Property.find(params[:id])
    @user = current_user
    if @user.admin?
      render :edit
    end
  end

  def update
    @property = Property.find(params[:id])
    @user = current_user
    if @property.update(property_params)
      redirect_to properties_path
    else
      flash[:notice] = @property.errors.full_messages.to_sentence
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @user = current_user

    if @user.admin?
      Property.destroy(params[:id])
      redirect_to properties_path

    end
  end

  private

  def property_params
    params.require(:property).permit(:address, :purchase_price, :selling_price, :description, :sold, :inactive)
  end

end
