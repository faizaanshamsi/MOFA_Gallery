module Seeders
  module MediumSeeder
    class << self
      def seed
        mediums.each do |medium|
          Medium.find_or_initialize_by(name: medium[:name]) do |med|
            med.save
          end
        end
      end

      def mediums
        [
          {name: 'Photo'},
          {name: 'Painting'},
          {name: 'Sculpture'}
        ]
      end
    end
  end
end
