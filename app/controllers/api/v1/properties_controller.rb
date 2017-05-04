class Api::V1::PropertiesController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @properties = Property.all
    render json: @properties
  end

  def show
    @property = Property.find(params[:id])

    render json: @property
  end
end
