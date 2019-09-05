class Player
  attr_reader :name, :hp
  DEFAULT_HP = 10
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def reduce_hp(number)
    @hp -= number
  end
end
