# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :home do
    address_street { generate(:name) } 
    phone { generate(:name) } 
    address_number { generate(:name) }
    territory
    area
  end
end
