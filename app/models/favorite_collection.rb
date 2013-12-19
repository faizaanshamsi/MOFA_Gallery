class FavoriteCollection < ActiveRecord::Base

  validates_numericality_of :collection_id, only_integer: true, allow_nil: false
  validates_numericality_of :customer_id, only_integer: true, allow_nil: false

  belongs_to :collection,
    inverse_of: :favorite_collections

  belongs_to :customer,
    inverse_of: :favorite_collections

end
