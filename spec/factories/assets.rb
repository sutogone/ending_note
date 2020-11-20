FactoryBot.define do
  factory :asset do
    assets_category_id    {2}
    financial             {"66銀行"}
    assets_details        {"資産の詳細テスト"}
    association :user
  end
end
