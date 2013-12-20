class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find_by(id: params[:id])
    @collection_art = @collection.artworks.all
  end

end
