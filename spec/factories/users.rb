FactoryBot.define do
  factory :user do
    password {'mypassword'}
    sequence(:email) { |n| "email#{n}@.com" }
  end
end
