module Seeders
  module CollectionArtworkSeeder
    class << self
      def seed
        collection_artworks.each do |collection_artwork|
          CollectionArtwork.find_or_initialize_by(collection_id: collection_artwork[:collection_id]) do |caw|
            caw.artwork_id = collection_artwork[:artwork_id]
            caw.save
          end
        end
      end

      def collection_artworks
        [
          {collection_id: 1, artwork_id: 3},
          {collection_id: 2, artwork_id: 2},
          {collection_id: 3, artwork_id: 1}
        ]
      end
    end
  end
end
