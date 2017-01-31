class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    count = 1
    numbers = []
    while count <= @num
      numbers << count
      count += 1
    end
    numbers.inject(:+)**2
  end

  def sum_of_squares
    count = 1
    numbers = []
    while count <= @num
      numbers << count**2
      count += 1
    end
    numbers.inject(:+)
  end

  def difference
    @num == 0 ? 0 : square_of_sum - sum_of_squares
  end

end

class BookKeeping
  VERSION = 3
end
