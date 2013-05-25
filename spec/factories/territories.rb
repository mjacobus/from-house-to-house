# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :territory do
    name { generate :name}
    city
  end
end
