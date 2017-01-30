class Complement
  def self.of_dna(rna)
    dna = ""
    rna.length.times do |i|
      if rna[i] == "C"
        dna += "G"
      elsif rna[i] == "G"
        dna += "C"
      elsif rna[i] == "T"
        dna += "A"
      elsif rna[i] == "A"
        dna += "U"
      else
        return ''
      end
    end
    dna
  end

  # def self.of_dna(rna)
  #   dna = ''
  #   rna.length.times do |i|
  #     case rna[i]
  #     when 'C'
  #       dna += 'G'
  #     when 'G'
  #       dna += 'C'
  #     when 'T'
  #       dna += 'A'
  #     when 'A'
  #       dna += 'U'
  #     else
  #       return ''
  #     end
  #   end
  #   dna
  # end

  # KEY = {
  #   'C' => 'G',
  #   'G' => 'C',
  #   'T' => 'A',
  #   'A' => 'U'
  # }
  #
  # def self.of_dna(rna)
  #   rna.split('').map do |nucleotide|
  #     return '' unless KEY[nucleotide]
  #     KEY[nucleotide]
  #   end.join
  # end
end

module BookKeeping
  VERSION = 4

end
