FactoryGirl.define do
  factory :user do
    first_name "Bruce"
    last_name "Wayne"
    email "batman@gotham.gov"
    password "password"
    confirm_password "password"
  end
end