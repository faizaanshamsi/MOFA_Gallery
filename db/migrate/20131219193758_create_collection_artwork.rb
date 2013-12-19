class CreateCollectionArtwork < ActiveRecord::Migration
  def change
    create_table :collection_artworks do |t|
      t.integer :collection_id, null: false
      t.integer :artwork_id, null: false
    end
  end
end
