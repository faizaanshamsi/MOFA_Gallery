require 'spec_helper'

describe Seeders::StyleSeeder do

  let(:seeder) { Seeders::StyleSeeder }

  it 'should seed the data' do
    one_style = seeder.styles.first
    seeder.seed
    expect(Style.where(name: one_style[:name])).to be_present
  end

  it 'should not create duplicates' do
    seeder.seed
    count_after_seed = Style.count
    seeder.seed
    expect(Style.count).to eql(count_after_seed)
  end

end
