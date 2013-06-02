# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name { generate(:name) } 
    phone "MyString"
    email { generate(:email) }
    password 'password'
    admin false
  end
end
