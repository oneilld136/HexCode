class User < ApplicationRecord

  has_secure_password

  has_many :spellbooks
  has_many :spells, through: :spellbooks

  validates :name, uniqueness: true
  validates :bio, length: {maximum: 50}
  validates :zodiac_sign, inclusion: { in: %w(aries cancer taurus leo gemini virgo libra capricorn scorpio aquarius sagittarius pisces), message: "%{value} is not a valid sign."}

  def h_daily
       zodiac_sign = self.zodiac_sign
       source = Nokogiri::HTML(open("https://www.astrology.com/horoscope/daily/#{self.zodiac_sign}.html"))
       s_parse = source.css("main p").first.text
       return s_parse
     end
end
