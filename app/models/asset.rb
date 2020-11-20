class Asset < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :assets_category
  belongs_to :user

  with_options presence: true do
    validates :assets_category_id,      numericality: { other_than: 1}
  end
end
