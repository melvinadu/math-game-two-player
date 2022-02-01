class Player
  attr_accessor :name, :lives
  
  LIVES = 3

  def initialize(name)
    @name = name
    @lives = LIVES
  end

  def decrease_lives
    @lives -= 1
  end
end