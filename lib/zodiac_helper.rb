module ZodiacHelper

  # Returns the zodiac sign for a given date that can be specified either as
  # a Time object or as a text string with month/day:
  #      zodiac_sign_for(Time.utc(2000, "jun", 12))
  #      # => "Gemini"
  #
  #      zodiac_sign_for(1118)  # November 18
  #      # => "Scorpio"
  #
  #      zodiac_sign_for(612)  # June 12
  #      # => "Gemini"
  # 
  # Zodiac dates taken from: http://www.astrology-online.com/persn.htm. Don't ask
  # me.
  # 
  # <b>Remember that Ruby uses an octal representation for a number if it's
  # prefixed by a zero, so 0612 is not the same as 612.</b>
  def zodiac_sign_for(date)
    if date.kind_of?(Time)
      birth = date.strftime("%m%d").to_i # month/day as an integer
    else
      birth = date
    end

    case birth
      when 121..219   then zodiac = "Aquarius"
      when 220..320   then zodiac = "Pisces"
      when 321..420   then zodiac = "Aries"
      when 421..521   then zodiac = "Taurus"
      when 522..621   then zodiac = "Gemini"
      when 622..722   then zodiac = "Cancer"
      when 723..821   then zodiac = "Leo"
      when 822..923   then zodiac = "Virgo"
      when 924..1023  then zodiac = "Libra"
      when 1024..1122 then zodiac = "Scorpio"
      when 1123..1222 then zodiac = "Sagittarius"
      when 1223..1231 then zodiac = "Capricorn"
      when 11..120    then zodiac = "Capricorn"
    else 
      raise "Invalid date for zodiac sign - #{date}"
    end
    zodiac
  end
end
