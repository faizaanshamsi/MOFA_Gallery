require 'spec_helper'

describe Seeders::FavoriteCollectionSeeder do

  let(:seeder) { Seeders::FavoriteCollectionSeeder }

  it 'should seed the data' do
    one_favorite_collection = seeder.favorite_collections.first
    seeder.seed
    expect(FavoriteCollection.where(collection_id: one_favorite_collection[:collection_id])).to be_present

  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = FavoriteCollection.count
    seeder.seed
    expect(FavoriteCollection.count).to eql(count_after_seed)
  end

end
