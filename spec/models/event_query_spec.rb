require 'spec_helper'

describe EventQuery, "quering by status" do
  let(:status) { event.status }
  let!(:event)  { create(:event, status: Event::STATUSES.first) }
  let!(:another_event)  { create(:event, status: Event::STATUSES.last) }
  subject { EventQuery.new }

  specify "finds with object" do
    subject.with_status(status).all.should eq([event])
  end
end


describe EventQuery, "quering by type" do
  let(:type) { event.event_type }
  let!(:event)  { create(:event, event_type: Event::TYPES.first) }
  let!(:another_event)  { create(:event, event_type: Event::TYPES.last) }
  subject { EventQuery.new }

  specify "finds with object" do
    subject.with_type(type).all.should eq([event])
  end
end
