require 'spec_helper'

describe Home, "#address_street" do
  it { should allow_mass_assignment_of(:address_street) }
  it { should validate_presence_of(:address_street) }
end


describe Home, "#area" do
  it { should allow_mass_assignment_of(:area_id) }
  it { should belong_to(:area) }
  it { should validate_presence_of(:area) }
end


describe Home, "#address_number" do
  it { should allow_mass_assignment_of(:address_number) }
  it { should validate_presence_of(:address_number) }
end


describe Home, "#phone" do
  it { should allow_mass_assignment_of(:phone) }
end


describe Home, "#territory" do
  it { should allow_mass_assignment_of(:territory_id) }
  it { should belong_to(:territory) }
  it { should validate_presence_of(:territory) }
end
