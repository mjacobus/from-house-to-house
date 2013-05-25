require 'spec_helper'

describe Territory, '#city' do
  it { should allow_mass_assignment_of(:city_id) } #causing errors
  it { should validate_presence_of(:city) }
  it { should belong_to(:city) }
end

describe Territory, '#name' do
  it { should allow_mass_assignment_of(:name) } # causing errors
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive.scoped_to(:city_id) }
end
