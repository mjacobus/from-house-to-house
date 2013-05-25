require 'spec_helper'

class DummyQuery < Query::Base
  def with_value(value)
    @value = value
  end

  def value
    @value
  end
end

describe Query::Base, '#with_params' do
  subject { DummyQuery.new }

  it 'uses with_prefix for querying given params' do
    expect do
      subject.with_params({value: 'given_value'})
    end.to change { subject.value }.from(nil).to('given_value')
  end
end