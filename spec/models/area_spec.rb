require 'spec_helper'

describe Area, "#city" do
  it { should allow_mass_assignment_of(:city_id) }
  it { should belong_to(:city) }
  it { should validate_presence_of(:city) }
end


describe Area, "#name" do
  it { should allow_mass_assignment_of(:name) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:city_id) }
end