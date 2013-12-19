module Seeders
  module FavoriteCollectionSeeder
    class << self
      def seed
        favorite_collections.each do |favorite_collection|
          FavoriteCollection.find_or_initialize_by(collection_id: favorite_collection[:collection_id]) do |fc|
            fc.customer_id = favorite_collection[:customer_id]
            fc.save
          end
        end
      end

      def favorite_collections
        [
          {collection_id: 1, customer_id: 3},
          {collection_id: 2, customer_id: 2},
          {collection_id: 3, customer_id: 1}
        ]
      end
    end
  end
end
