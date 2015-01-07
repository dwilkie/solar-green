FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password  "secret_password"
    name "Thida"
    phone "10101010"
    branch
  end
end
