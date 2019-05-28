class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :campervan
  has_many :reviews
  validates :start_date, presence: true
  validates :end_date, presence: true
  #validates :total_price, presence: true
  validate :date_booking_validation

  before_save :calculate_total_price
  before_save :date_booking_validation

  def calculate_total_price
    duration = self.end_date - self.start_date
    self.total_price = duration * self.campervan.daily_price
  end

  def date_booking_validation
    if self.start_date >= self.end_date
      errors.add(:start_date, "can't be equal or greater than the end date")
    end
  end
end
