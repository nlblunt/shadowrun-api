class MetatypeController < ApplicationController
  
  #Returns a list of all the created Metatypes
  def index
    @meta = Metatype.all
    render json: @meta
  end
end
