class SearchesController < ApplicationController

  def index
    if Property.search(params[:term])
      @properties = Property.search(params[:term])
    else
      @properties = nil
    end
    if @properties==nil
      flash[:notice] = "No properties matched your search"
      redirect_to properties_path
    end
  end

end
