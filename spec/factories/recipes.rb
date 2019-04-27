FactoryBot.define do
  factory :recipe do
    thumbnail { "MyString" }
    title { "MyString" }
    ingredients { "MyText" }
    instructions { "MyText" }
    allow_comments { false }
    status { false }
    category { nil }
    user { nil }
  end
end
