module Seeders
  module CustomerSeeder
    class << self
      def seed
        customers.each do |customer|
          Customer.find_or_initialize_by(name: customer[:name]) do |cust|
            cust.contact_info = customer[:contact_info]
            cust.save
          end
        end
      end

      def customers
        [
          {name: 'Dave Powers', contact_info: 'dave@imrich.com'},
          {name: 'Jason', contact_info: 'jason@zopf.com'},
          {name: 'Lily', contact_info: 'lily@barnard.edu'}
        ]
      end
    end
  end
end
