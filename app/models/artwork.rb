class Artwork < ActiveRecord::Base

  validates_numericality_of :artist_id, only_integer: true, allow_nil: false
  validates_presence_of :created_date
  validates_presence_of :listed_date
  validates_numericality_of :asking_price
  validates_numericality_of :medium_id, only_integer: true, allow_nil: false
  validates_presence_of :title
  validates_numericality_of :customer_id, only_integer: true, allow_nil: true

  belongs_to :artist ,
    inverse_of: :artworks

  belongs_to :customer

  belongs_to :medium

  has_many :collection_artworks,
    dependent: :destroy

  has_many :collections,
    through: :collection_artworks

end

 # validates_presence_of :title
 #  validates_numericality_of :rating, only_integer: true, allow_nil: false,
 #    greater_than_or_equal_to: 0,
 #    less_than_or_equal_to: 100
