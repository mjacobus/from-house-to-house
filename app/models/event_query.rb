class EventQuery < Query::Base
  attr_reader :query
  delegate :all, :each, to: :query

  def initialize(query = Event.scoped)
    @query = query
  end

  def with_status(status)
    with_status_id(status.id)
  end

  def with_status_id(id)
    @query = query.where(status_id: id)
    self
  end

  def with_status_slug(slug)
    @query = query.joins(:status).where(event_statuses: {slug: slug})
    self
  end

  def with_type(type)
    @query = query.where(event_type: type)
  end

end
