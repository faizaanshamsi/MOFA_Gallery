require 'spec_helper'

describe Seeders::MediumSeeder do

  let(:seeder) { Seeders::MediumSeeder }

  it 'should seed the data' do
    one_medium = seeder.mediums.first
    seeder.seed
    expect(Medium.where(name: one_medium[:name])).to be_present


  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = Medium.count
    seeder.seed
    expect(Medium.count).to eql(count_after_seed)
  end

end
