class Funeral < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :religion
  belongs_to_active_hash :funeral_scale
  belongs_to_active_hash :funeral_expenses
  belongs_to_active_hash :wake_place
  belongs_to_active_hash :funeral_place
  belongs_to_active_hash :burial_place
  belongs_to :user


  with_options presence: true do
    validates :chief_mourner
    validates :religion_id,               numericality: true
    validates :funeral_scale_id,          numericality: true
    validates :funeral_expenses_id,       numericality: true
    validates :wake_place_id,             numericality: true
    validates :funeral_place_id,          numericality: true
    validates :burial_place_id,           numericality: true
  end
end
