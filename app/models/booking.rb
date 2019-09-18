class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  validates :date, presence: true
  validates :time, presence: true

  after_save :call_uber, on: :create

  private

  def call_uber
    # TODO asynchronously call Uber API
  end
end
