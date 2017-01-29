class Hamming

  def self.dna_not_the_same_length(dna1, dna2)
    if dna1.length != dna2.length
      raise ArgumentError
    end
  end

  def self.compute(dna1, dna2)
    dna_not_the_same_length(dna1, dna2)
    distance = 0
    dna1.length.times do |i|
      if dna1[i] != dna2[i]
        distance += 1
      end
    end
    distance
  end

end

module BookKeeping
  VERSION = 3
end
