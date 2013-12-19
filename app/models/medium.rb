class Medium < ActiveRecord::Base

  validates :name, length: { minimum: 1 }

  has_many :artworks,
    inverse_of: :medium,
    dependent: :destroy

end
