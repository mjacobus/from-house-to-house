# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    date "2013-05-25 12:36:47"
    goal "MyText"
    notes "MyText"
    event_type { Event::TYPES.first }
    status { Event::STATUSES.first }
    publisher factory: :user, publisher: true
  end
end
