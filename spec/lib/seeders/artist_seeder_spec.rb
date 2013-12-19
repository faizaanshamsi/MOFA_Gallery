require 'spec_helper'

describe Seeders::ArtistSeeder do

  let(:seeder) { Seeders::ArtistSeeder }

  it 'should seed the data' do
    one_artist = seeder.artists.first
    seeder.seed
    expect(Artist.where(name: one_artist[:name])).to be_present

  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = Artist.count
    seeder.seed
    expect(Artist.count).to eql(count_after_seed)
  end

end
