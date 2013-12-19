require 'spec_helper'

describe Seeders::CollectionSeeder do

  let(:seeder) { Seeders::CollectionSeeder }

  it 'should seed the data' do
    one_collection = seeder.collections.first
    seeder.seed
    expect(Collection.where(name: one_collection[:name])).to be_present


  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = Collection.count
    seeder.seed
    expect(Collection.count).to eql(count_after_seed)
  end

end
