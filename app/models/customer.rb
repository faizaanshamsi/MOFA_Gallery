class Customer < ActiveRecord::Base

  validates :name, length: { minimum: 1 }
  validates :contact_info, length: { minimum: 1 }

  has_many :artworks,
    inverse_of: :customer

  has_many :favorite_collections,
    inverse_of: :customer

  has_many :collections,
    through: :favorite_collections

end
