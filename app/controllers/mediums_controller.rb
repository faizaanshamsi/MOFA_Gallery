class MediumsController < ApplicationController

  def index
    @mediums = Medium.all
  end

  def show
    @medium = Medium.find_by(id: params[:id])
  end

end
