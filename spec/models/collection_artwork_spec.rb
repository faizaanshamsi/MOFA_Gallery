require 'spec_helper'

describe CollectionArtwork do

  describe 'Database Tests' do

    it { should have_db_column(:collection_id).of_type(:integer) }
    it { should have_db_column(:artwork_id).of_type(:integer) }

  end

  describe 'Validation Tests' do

    it { should validate_numericality_of(:collection_id).only_integer }
    it { should validate_numericality_of(:artwork_id).only_integer }

  end

  describe 'Association Tests' do

    it { should belong_to(:collection) }
    it { should belong_to(:artwork) }

  end

end
