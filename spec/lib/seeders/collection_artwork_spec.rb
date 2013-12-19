require 'spec_helper'

describe Seeders::CollectionArtworkSeeder do

  let(:seeder) { Seeders::CollectionArtworkSeeder }

  it 'should seed the data' do
    one_collection_artwork = seeder.collection_artworks.first
    seeder.seed
    expect(CollectionArtwork.where(collection_id: one_collection_artwork[:collection_id])).to be_present

  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = CollectionArtwork.count
    seeder.seed
    expect(CollectionArtwork.count).to eql(count_after_seed)
  end

end
