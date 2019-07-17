FactoryBot.define do
  factory :post do
    title { "MyString" }
    text { "MyText" }
    association :user
  end
end