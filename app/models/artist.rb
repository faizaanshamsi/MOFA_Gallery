class Artist < ActiveRecord::Base

  validates :name, length: { minimum: 1 }
  validates :contact_info, length: { minimum: 1 }
  validates :birthplace, length: { minimum: 1 }
  validates_numericality_of :style_id, only_integer: true, allow_nil: false

  belongs_to :style,
    inverse_of: :artists

  has_many :artworks,
    inverse_of: :artist,
    dependent: :destroy

end
