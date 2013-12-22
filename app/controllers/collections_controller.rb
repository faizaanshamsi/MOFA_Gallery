class CollectionsController < ApplicationController

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find_by(id: params[:id])
    @collection_art = @collection.artworks.all
  end

  def new
    @collection = Collection.new
  end


  def create
    @collection = Collection.new(params)

    if @collection.save
      format.html { redirect_to @collection, notice: 'Whatever was successfully created.' }
    else
      format.html { render action: 'new' }
    end
  end

end
