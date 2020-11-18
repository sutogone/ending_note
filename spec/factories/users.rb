FactoryBot.define do
  factory :user do
    medical_record        {Faker::Number(digits: 3)}
    email                 {Faker::Internet.free_email}
    password              {"test123"}
    password_confirmation {password}
  end
end
