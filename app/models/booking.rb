class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  validates :date, presence: true
  validates :time, presence: true
end
