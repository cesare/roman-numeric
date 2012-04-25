module RomanNumeric
  class << self
    ROMAIN_CHARS = [
      ['i', 'v', 'x'],
      ['x', 'l', 'c'],
      ['c', 'd', 'm'],
      ['m', '?', '*'],
    ]
    
    def to_roman(i)
      raise ArgumentError, "no zero nor nevative values in Roman numeric" if i < 1
      raise ArgumentError, "unsupported large number #{i}" if i >=  10 ** ROMAIN_CHARS.length
      
      result = (0..3).inject([]) do |result, n|
        result << to_roman_nth((i / 10**n) % 10, *ROMAIN_CHARS[n])
      end
      result.reverse.join
    end
    
    def to_roman_nth(i, one, five, ten)
      case i
      when 1..3
        one * i
      when 4
        one + five
      when 5
        five
      when 6..8
        five + one * (i - 5)
      when 9
        one + ten
      else
        ""
      end
    end
  end
end
