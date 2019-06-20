def reading
  @list = []
  Horoscopes::Zodiacs.all.each do |sign|
      number = sign.number
      doc = Nokogiri::HTML(open("https://www.horoscope.com/us/horoscopes/general/horoscope-general-daily-today.aspx?sign=#{number}"))
      sign_reading = doc.css("div.horoscope-content p:first-child").text.strip
      sign.reading = sign_reading
      @list << sign
  end
  @list
end
