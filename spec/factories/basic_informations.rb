FactoryBot.define do
  factory :basic_information do
    last_name               {"山本"}
    first_name              {"消費"}
    last_name_kana          {"ヤマモト"}
    first_name_kana         {"ショウヒ"}
    birthday                {"1945-1-1"}
    postal_code             { '123-4567' }
    prefecture_id           { 2 }
    city                    { '日本市' }
    address                 { '日ノ本2-3-4' }
    building                { '日本ビル'}
    blood_type_id           { 1 }
    association :user
  end
end
