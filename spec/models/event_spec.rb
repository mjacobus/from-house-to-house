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

describe Event, '#publisher' do
  it { should allow_mass_assignment_of(:publisher_id)  }
  it { should belong_to(:publisher) }
  it { should validate_presence_of(:publisher)  }
end

describe Event, '#partner' do
  it { should allow_mass_assignment_of(:partner_id)  }
  it { should belong_to(:partner) }
  it { should_not validate_presence_of(:partner) }
end

describe Event, '#status' do
  it { should allow_mass_assignment_of(:status_id) }
  it { should belong_to(:status) }
  it { should validate_presence_of(:status) }
end

describe Event, '#event_type' do
  it { should allow_mass_assignment_of(:event_type) }
  it { should ensure_inclusion_of(:event_type).in_array(Event::TYPES) }
end


