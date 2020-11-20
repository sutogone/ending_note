class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :basic_information
  has_many :pets
  has_many :contacts
  has_many :funerals
  has_many :assets
        
  with_options presence: true do
  validates :medical_record, uniqueness: true, numericality: { only_integer: true }
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/}
  end
end
