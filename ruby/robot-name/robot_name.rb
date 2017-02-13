module BookKeeping
  VERSION = 2
end

class Robot
  ROBOT_NAMES = []

  attr_reader :name
  def initialize
    @name = generate_name
  end


  def generate_name
    letters = ("A".."Z").to_a.shuffle.take(2).join
    numbers = (1..9).to_a.shuffle.take(3).join
    complete_name = letters + numbers
    if ROBOT_NAMES.include?(complete_name)
      generate_name
    else
      ROBOT_NAMES << complete_name
      complete_name
    end
  end

  def reset
    @name = generate_name
  end

end
