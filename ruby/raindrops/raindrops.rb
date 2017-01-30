class Raindrops
  DROPS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(raindrop)
    ret = ''
    DROPS.each do |num, drop|
      if raindrop % num == 0
       ret += drop
      end
    end
    ret != '' ? ret : raindrop.to_s
  end

end

module BookKeeping
  VERSION = 3
end
