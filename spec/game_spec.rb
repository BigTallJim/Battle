require 'game'

describe Game do
  it "allows attacker to attack other player" do
    player = Player.new("player")
    expect{subject.attack(player)}.to change{player.hp}.by(-10)
  end
end
