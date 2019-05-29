class Campervan < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :name, presence: true
  validates :bed_type, presence: true
  validates :belted_seats, presence: true
  validates :sleeps, presence: true
  validates :location, presence: true
  validates :photo, presence: true
  validates :daily_price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
