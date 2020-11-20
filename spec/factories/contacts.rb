FactoryBot.define do
  factory :contact do
    acquaintance_name       {"知人次郎"}
    acquaintance_contact    {"09011111111"}
    acquaintance_details    {"会社員"}
    association :user
  end
end
