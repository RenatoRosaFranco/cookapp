FactoryBot.define do
  factory :profile do
    birthdate { "2019-04-29" }
    gender { "MyString" }
    state { nil }
    city { nil }
    bio { "MyText" }
    user { "" }
  end
end
