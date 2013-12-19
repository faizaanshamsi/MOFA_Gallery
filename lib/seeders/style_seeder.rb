module Seeders
  module StyleSeeder
    class << self
      def seed
        styles.each do |style|
          Style.find_or_initialize_by(name: style[:name]) do |styl|
            styl.save
          end
        end
      end

      def styles
        [
          {name: 'Impressionist'},
          {name: 'Classical'},
          {name: 'Contemporary'}
        ]
      end
    end
  end
end
