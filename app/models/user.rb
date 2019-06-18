class User < ApplicationRecord
  has_many :spellbooks
  has_many :spells, through: :spellbooks

  validates :name, uniqueness: true
  validates :bio, length: {maximum: 50}
  validates :zodiac_sign, inclusion: { in: %w(aries cancer taurus leo gemini virgo libra capricorn scorpio aquarius sagittarius pisces), message: "%{value} is not a valid sign."}
end
