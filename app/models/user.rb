class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :first_name, :email, :password, :password_confirmation
  validates :email, uniqueness: true
  validates :first_name, uniqueness: true

  has_many :slots, dependent: :delete_all
end
