require 'spec_helper'

describe Home, "#address" do
  it { should allow_mass_assignment_of(:address) }
  it { should validate_presence_of(:address) }
end


describe Home, "#area" do
  it { should allow_mass_assignment_of(:area_id) }
  it { should belong_to(:area) }
  it { should validate_presence_of(:area) }
end


describe Home, "#number" do
  it { should allow_mass_assignment_of(:number) }
  it { should validate_presence_of(:number) }
end


describe Home, "#phone" do
  it { should allow_mass_assignment_of(:phone) }
end


describe Home, "#territory" do
  it { should allow_mass_assignment_of(:territory_id) }
  it { should belong_to(:territory) }
  it { should validate_presence_of(:territory) }
end
