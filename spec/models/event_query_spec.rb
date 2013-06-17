require 'spec_helper'

describe EventQuery, "quering by status" do
  let(:status) { event.status }
  let!(:event)  { create(:event) }
  let!(:another_event)  { create(:event) }
  subject { EventQuery.new }

  specify "finds with object" do
    subject.with_status(status).all.should eq([event])
  end

  specify "finds with id" do
    subject.with_status_id(status.id).all.should eq([event])
  end

  specify "finds with status_slug" do
    subject.with_status_slug(status.slug).all.should eq([event])
  end
end


describe EventQuery, "quering by type" do
  let(:type) { event.type }
  let!(:event)  { create(:event) }
  let!(:another_event)  { create(:event) }
  subject { EventQuery.new }

  specify "finds with object" do
    subject.with_type(type).all.should eq([event])
  end

  specify "finds with id" do
    subject.with_type_id(type.id).all.should eq([event])
  end

  specify "finds with slug" do
    subject.with_type_slug(type.slug).all.should eq([event])
  end
end
