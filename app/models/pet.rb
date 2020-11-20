class Pet < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :pet_name
    validates :pet_breed
    validates :pet_age,              numericality: true
  end
end
