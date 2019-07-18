FactoryBot.define do
  factory :plant do
    name { "MyString" }
    details { "MyText" }
    price { 1 }
    category { "MyString" }
    quantity { 1 }
    association :user
  end
end
