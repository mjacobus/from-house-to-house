require 'spec_helper'

describe City, '#areas' do
  it { should have_many(:areas) } 
end

describe City, '#territories' do
  it { should have_many(:territories) } 
end

describe "#destroy" do
  it "fails when has cities but succeeds when does not" do
    create(:area).city.destroy.should be_false
    create(:city).destroy.should be_true
  end

  it "fails when has territories but succeeds when does not" do
    create(:territory).city.destroy.should be_false
    create(:territory).destroy.should be_true
  end
end


describe City, '#name' do
  it { should allow_mass_assignment_of(:name) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }
end


describe City, '#short' do
  it { should allow_mass_assignment_of(:short) }
  it { should validate_presence_of(:short) }
  it { should validate_uniqueness_of(:short).case_insensitive }
end


