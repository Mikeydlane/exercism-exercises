module BookKeeping
  VERSION = 2
end

class Integer
  ROMAN_LETTERS = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }


  def to_roman
    length = self.to_s.length
    [
      thousands_column(length),
      hundreds_column(length),
      tens_column(length),
      ones_column(length)
    ][-length, length].join('')
  end

  def ones_column(length)
    ones = self.to_s[length - 1].to_i
    column_to_roman(1, 5, 10, ones)
  end

  def tens_column(length)
    tens = self.to_s[length - 2].to_i
    column_to_roman(10, 50, 100, tens)
  end

  def hundreds_column(length)
    hundreds = self.to_s[length - 3].to_i
    column_to_roman(100, 500, 1000, hundreds)
  end

  def thousands_column(length)
    thousands = self.to_s[0].to_i
    column_to_roman(1000, 1000, 1000, thousands)
  end

  def column_to_roman(key1, key2, key3, column)
    roman = ''
    if column < 4
      column.times do
        roman << ROMAN_LETTERS[key1]
      end
    elsif column == 4
      roman = "#{ROMAN_LETTERS[key1] + ROMAN_LETTERS[key2]}"
    elsif column == 9
      roman = "#{ROMAN_LETTERS[key1] + ROMAN_LETTERS[key3]}"
    else
      roman << ROMAN_LETTERS[key2]
      (column - 5).times do
        roman << ROMAN_LETTERS[key1]
      end
    end
    roman
  end

end
