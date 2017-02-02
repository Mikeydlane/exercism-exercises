class Pangram
  ALPHABET = ('a'..'z').to_a

  def self.pangram?(phrase)
    ALPHABET.all? do |letter|
      phrase.downcase.include?(letter)
    end
  end

end

class BookKeeping
  VERSION = 3
end
