# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :home do
    address { generate(:name) } 
    phone { generate(:name) } 
    number { generate(:name) }
    territory
    area
  end
end
