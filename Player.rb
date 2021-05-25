class Player
  attr_accessor :lives, :name, :end
  # attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
    @end = false
  end

  def decrease_life
    @lives = @lives - 1
  end

end