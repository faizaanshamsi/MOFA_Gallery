require 'spec_helper'

describe Seeders::ArtworkSeeder do

  let(:seeder) { Seeders::ArtworkSeeder }

  it 'should seed the data' do
    one_artwork = seeder.artworks.first
    seeder.seed
    expect(Artwork.where(title: one_artwork[:title])).to be_present

  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = Artwork.count
    seeder.seed
    expect(Artwork.count).to eql(count_after_seed)
  end

end
