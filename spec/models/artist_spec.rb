require 'spec_helper'

describe Artist do

  describe 'Database Tests' do

    it { should have_db_column(:name).of_type(:string) }
    it { should have_db_column(:contact_info).of_type(:string) }
    it { should have_db_column(:birthplace).of_type(:string) }
    it { should have_db_column(:style_id).of_type(:integer) }

  end

  describe 'Validation Tests' do

    it { should have_valid(:name).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:name).when('', nil) }

    it { should have_valid(:contact_info).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:contact_info).when('', nil) }

    it { should have_valid(:birthplace).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:birthplace).when('', nil) }

    it { should validate_numericality_of(:style_id).only_integer }

  end

  describe 'Association Tests' do

    it { should belong_to(:style) }
    it { should have_many(:artworks).dependent(:destroy) }

  end

end
