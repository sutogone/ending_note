FactoryBot.define do
  factory :funeral do
    chief_mourner         {"テスト喪主です"}
    funerals_details      {"テスト詳細"}
    religion_id           {Faker::Number.within(range: 1..6)}
    funeral_scale_id      {Faker::Number.within(range: 1..5)}
    funeral_expenses_id   {Faker::Number.within(range: 1..2)}
    wake_place_id         {Faker::Number.within(range: 1..4)}
    funeral_place_id      {Faker::Number.within(range: 1..4)}
    burial_place_id       {Faker::Number.within(range: 1..6)}
    association :user
  end
end
