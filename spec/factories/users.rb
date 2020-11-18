FactoryBot.define do
  factory :user do
    medical_record        {Faker::Number.number(digits: 5)}
    email                 {Faker::Internet.free_email}
    password              {"test123"}
    password_confirmation {password}
  end
end
