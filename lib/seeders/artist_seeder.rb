module Seeders
  module ArtistSeeder
    class << self
      def seed
        artists.each do |artist|
          Artist.find_or_initialize_by(name: artist[:name]) do |art|
            art.contact_info = artist[:contact_info]
            art.birthplace = artist[:birthplace]
            art.style_id = artist[:style_id]
            art.save
          end
        end
      end

      def artists
        [
          {name: 'Mo Zhu', contact_info: 'mo@mo.mo', birthplace: 'Boston', style_id: 1 },
          {name: 'Faizaan!', contact_info: 'Faizaan@shamsi.com', birthplace: 'Space', style_id: 2 },
          {name: 'K3v!n', contact_info: 'kevin@bitcoin.com', birthplace: 'Korea', style_id: 3 }
        ]
      end
    end
  end
end
