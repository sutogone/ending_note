FactoryBot.define do
  factory :pet do
    pet_name     {"ポチ"}
    pet_breed    {"柴犬"}
    pet_age      {"12"}
    pet_details  {"ペットのその他詳細"}
    association :user
  end
end
