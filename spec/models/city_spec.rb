require 'spec_helper'

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


