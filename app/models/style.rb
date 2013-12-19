class Style < ActiveRecord::Base

  validates :name, length: { minimum: 1 }

  has_many :artists,
    inverse_of: :style,
    dependent: :destroy

  has_many :artworks,
    through: :artists
end
