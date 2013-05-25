require 'spec_helper'

describe EventStatus, '#events' do
  it { should have_many(:events) }
end

describe EventStatus, '#name' do
  it { should allow_mass_assignment_of(:name) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
end

describe EventStatus, '#slug' do
  it { should allow_mass_assignment_of(:slug) }
  it { should validate_presence_of(:slug) }
  it { should validate_uniqueness_of(:slug) }
end

describe EventStatus, '#slug=' do
  it "parameterizes given slug" do
    subject.slug = 'A Slug'
    subject.slug.should eq('a-slug')

    subject.slug = nil
    subject.slug.should be_nil
  end
end
