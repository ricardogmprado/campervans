class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :campervans
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /.+\@.+\..+/ }
  validates :phone_number, presence: true
end
