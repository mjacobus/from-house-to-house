# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :home do
    address "MyString"
    phone "MyString"
    number "MyString"
    territory
    area
  end
end
