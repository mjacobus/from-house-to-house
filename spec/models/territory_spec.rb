require 'spec_helper'

describe Territory, '#city' do
  it { should allow_mass_assignment_of(:city_id) } #causing errors
  it { should validate_presence_of(:city) }
  it { should belong_to(:city) }
end

describe Territory, '#destroy' do
  it "fails when has homes but succeeds when does not" do
    create(:home).territory.destroy.should be_false
    create(:territory).destroy.should be_true
  end
end

describe Territory, '#homes' do
  it { should have_many(:homes) }
end

describe Territory, '#name' do
  it { should allow_mass_assignment_of(:name) } # causing errors
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:city_id) }
end
