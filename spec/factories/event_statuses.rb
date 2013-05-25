# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_status do
    name { generate(:name) }
    slug { generate(:name) }
  end
end
