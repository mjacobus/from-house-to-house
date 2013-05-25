require 'spec_helper'

describe Event, '#date' do
  it { should allow_mass_assignment_of(:date) }
  it { should validate_presence_of(:date) }
end

describe Event, '#goal' do
  it { should allow_mass_assignment_of(:goal) }
  it { should validate_presence_of(:goal) }
end

describe Event, '#notes' do
  it { should allow_mass_assignment_of(:notes) }
  it { should_not validate_presence_of(:notes) }
end

describe Event, '#status' do
  it { should allow_mass_assignment_of(:status_id) }
  it { should belong_to(:status) }
  it { should validate_presence_of(:status) }
end

describe Event, '#type' do
  it { should allow_mass_assignment_of(:type_id) }
  it { should belong_to(:type) }
  it { should validate_presence_of(:type) }
end


