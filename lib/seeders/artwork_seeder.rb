module Seeders
  module ArtworkSeeder
    class << self
      def seed
        artworks.each do |artwork|
          Artwork.find_or_initialize_by(title: artwork[:title]) do |aw|
            aw.artist_id = artwork[:artist_id]
            aw.created_date = artwork[:created_date]
            aw.listed_date = artwork[:listed_date]
            aw.asking_price = artwork[:asking_price]
            aw.medium_id = artwork[:medium_id]
            aw.purchase_date = artwork[:purchase_date]
            aw.customer_id = artwork[:customer_id]
            aw.selling_price = artwork[:selling_price]
            aw.save
          end
        end
      end

      def artworks
        [
          {title: 'Kevin and the Orange', artist_id: 1,
            created_date: Time.now, listed_date: Time.now, asking_price: 1 ,
            medium_id: 3, purchase_date: Time.now, customer_id: 2, selling_price: 1000 },
          {title: 'Kevin and the Orange', artist_id: 2,
            created_date: Time.now, listed_date: Time.now, asking_price: 200,
            medium_id: 2},
          {title: 'Kevin and the Orange', artist_id: 3,
            created_date: Time.now , listed_date: Time.now, asking_price: 10000000,
            medium_id: 1}
        ]
      end
    end
  end
end
