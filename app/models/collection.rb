class Collection < ActiveRecord::Base

  validates :name, length: { minimum: 1 }

  has_many :favorite_collections,
    inverse_of: :collection

  has_many :collection_artworks,
    inverse_of: :collection

  has_many :artworks,
    through: :collection_artworks

  has_many :customers,
    through: :favorite_collections

end
