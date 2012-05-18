FactoryGirl.define do
  factory :user do
    name     "Matthew Nguyen"
    email    "mnguyen916@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end