require 'spec_helper'

describe FavoriteCollection do

  describe 'Database Tests' do

    it { should have_db_column(:collection_id).of_type(:integer) }
    it { should have_db_column(:customer_id).of_type(:integer) }

  end

  describe 'Validation Tests' do

    it { should validate_numericality_of(:collection_id).only_integer }
    it { should validate_numericality_of(:customer_id).only_integer }

  end

  describe 'Association Tests' do

    it { should belong_to(:collection) }
    it { should belong_to(:customer) }

  end
end
