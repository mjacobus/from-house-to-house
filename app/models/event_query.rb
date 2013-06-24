class EventQuery < Query::Base
  attr_reader :query
  delegate :all, :each, to: :query

  def initialize(query = Event.scoped)
    @query = query
  end

  def with_status(status)
    @query = query.where(status: status)
    self
  end

  def with_type(type)
    @query = query.where(event_type: type)
  end

end
