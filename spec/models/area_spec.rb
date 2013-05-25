require 'spec_helper'

describe Area, "#city" do
  it { should allow_mass_assignment_of(:city_id) }
  it { should belong_to(:city) }
  it { should validate_presence_of(:city) }
end

describe Area, '#destroy' do
   it "fails when has homes but succeeds when does not" do
    create(:home).area.destroy.should be_false
    create(:area).destroy.should be_true
  end
end

describe Area, '#homes' do
  it { should have_many(:homes) }
end

describe Area, "#name" do
  it { should allow_mass_assignment_of(:name) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:city_id) }
end