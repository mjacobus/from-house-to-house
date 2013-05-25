# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :city do
    name { generate(:name) }
    short { generate(:short) }
  end
end
