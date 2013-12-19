require 'spec_helper'

describe Collection do

  describe 'Database Tests' do

    it { should have_db_column(:name).of_type(:string) }

  end

  describe 'Validation Tests' do

    it { should have_valid(:name).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:name).when('', nil) }

  end

  describe 'Association Tests' do

    it { should belong_to(:collection_artwork) }
    it { should belong_to(:favorite_collection) }

    it { should have_many(:artworks).through(:collection_artworks) }
    it { should have_many(:customers).through(:favorite_collections) }

  end

end
