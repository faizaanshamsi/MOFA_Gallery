require 'spec_helper'

describe Seeders::CustomerSeeder do

  let(:seeder) { Seeders::CustomerSeeder }

  it 'should seed the data' do
    one_customer = seeder.customers.first
    seeder.seed
    expect(Customer.where(name: one_customer[:name])).to be_present

  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = Customer.count
    seeder.seed
    expect(Customer.count).to eql(count_after_seed)
  end

end
