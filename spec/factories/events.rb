# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    date "2013-05-25 12:36:47"
    type
    status
    goal "MyText"
    notes "MyText"
  end
end
