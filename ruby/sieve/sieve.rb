require 'prime'

class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    (2..@limit).to_a.select { |num| num.prime? }
  end
end

module BookKeeping
  VERSION = 1
end
