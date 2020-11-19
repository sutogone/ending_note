class BasicInformation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :blood_type
  belongs_to :user

  regex_all = /\A[ぁ-んァ-ン一-龥]/
  regex_kana = /\A[ァ-ヶー－]+\z/

  with_options presence :true do
    validates :last_name,                         format: { with: regex_all }
    validates :first_name,                        format: { with: regex_all }
    validates :last_name_kana,                    format: { with: regex_kana }
    validates :first_name_kana,                   format: { with: regex_kana }
    validates :birthday
    validates :postal_code,                       format: {with:/\A\d{3}[-]\d{4}\z/}
    validates :prefecture_id,                     numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :address
    validates :blood_type_id,                     numericality: { other_than: 1, message: "can't be blank" }
  end
end
