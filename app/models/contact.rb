class Contact < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :acquaintance_name
    validates :acquaintance_contact,              numericality: true
  end
end
