require 'spec_helper'

describe Artwork do

  describe 'Database Tests' do

    it { should have_db_column(:artist_id).of_type(:integer) }
    it { should have_db_column(:created_date).of_type(:date) }
    it { should have_db_column(:listed_date).of_type(:date) }
    it { should have_db_column(:asking_price).of_type(:decimal) }
    it { should have_db_column(:medium_id).of_type(:integer) }
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:purchase_date).of_type(:date) }
    it { should have_db_column(:customer_id).of_type(:integer) }
    it { should have_db_column(:selling_price).of_type(:decimal) }

  end

  describe 'Validation Tests' do

    it { should validate_numericality_of(:artist_id).only_integer }
    it { should validate_presence_of(:created_date) }
    it { should validate_presence_of(:listed_date) }
    it { should validate_numericality_of(:asking_price) }
    it { should validate_numericality_of(:medium_id).only_integer }
    it { should validate_presence_of(:title) }
    it { should validate_numericality_of(:customer_id).only_integer }

  end
  describe 'Association Tests' do

    it { should belong_to(:artist) }
    it { should belong_to(:customer) }
    it { should belong_to(:medium) }
    it { should have_many(:collection_artworks).dependent(:destroy) }
    it { should have_many(:collections).through(:collection_artworks) }

  end
end
