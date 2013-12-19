module Seeders
  module CollectionSeeder
    class << self
      def seed
        collections.each do |collection|
          Collection.find_or_initialize_by(name: collection[:name]) do |coll|
            coll.save
          end
        end
      end

      def collections
        [
          {name: 'The Antediluvian Collection'},
          {name: 'The Au Courant Collection'},
          {name: 'The Incohate Collection'}
        ]
      end
    end
  end
end
