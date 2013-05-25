# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_type do
    name { generate(:name) }
    slug { generate(:name) }
  end
end
