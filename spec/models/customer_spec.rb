require 'spec_helper'

describe Customer do

  describe 'Database Tests' do

    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:contact_info).of_type(:string) }

  end

  describe 'Validation Tests' do

    it { should have_valid(:name).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:name).when('', nil) }

    it { should have_valid(:contact_info).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:contact_info).when('', nil) }


  end

  describe 'Association Tests' do

    it { should have_many(:artworks) }
    it { should have_many(:favorite_collections) }
    it { should have_many(:collections).through(:favorite_collections) }

  end

  describe 'Total Amount Spent' do

    customer = FactoryGirl.create(:customer)
    artwork1 = FactoryGirl.create(:artwork, purchase_date: Time.now, customer_id: customer.id, selling_price: 500)
    artwork2 = FactoryGirl.create(:artwork, purchase_date: Time.now, customer_id: customer.id, selling_price: 600)
    artwork3 = FactoryGirl.create(:artwork, purchase_date: Time.now, customer_id: customer.id, selling_price: 700)

    it "should return a customer's total amount spent" do
      expect(customer.amount_spent).to eql(1800.0)
    end

  end
end
