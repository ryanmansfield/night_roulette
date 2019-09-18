class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :venues, through: :bookings
  has_many :bookings

  def prefs_sql
    preferences.map do |preference|
      "'#{preference}' = ANY(characteristics)"
    end.join(" OR ")
  end
end
