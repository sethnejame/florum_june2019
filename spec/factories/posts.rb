FactoryBot.define do
  factory :post do
    title { "MyString" }
    text { "MyText" }
    user_name { "MyString" }
    association :user
  end
end