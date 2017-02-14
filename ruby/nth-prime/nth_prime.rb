
module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth(num)
    raise ArgumentError if num == 0
    prime_numbers = [2]
    potential_prime = 3
    while prime_numbers.length != num
      if potential_prime.is_prime?
        prime_numbers << potential_prime
        potential_prime += 1
      else
        potential_prime += 1
      end
    end
    prime_numbers.last
  end

end


class Integer
  def is_prime?
    return false if self <= 1
    2.upto(Math.sqrt(self).to_i) do |x|
      return false if self%x == 0
    end
    true
  end
end
