class CollectionArtwork < ActiveRecord::Base

  validates_numericality_of :collection_id, only_integer: true, allow_nil: false
  validates_numericality_of :artwork_id, only_integer: true, allow_nil: false

  belongs_to :collection,
    inverse_of: :collection_artworks

  belongs_to :artwork,
    inverse_of: :collection_artworks

end
