require 'player'

describe Player do
  let(:bill) { Player.new("Bill") }

  it "returns a player's name" do
    expect(bill.name).to eq("Bill")
  end

  it "reduces HP by 10" do
    expect { bill.reduce_hp(10) }.to change { bill.hp }.by(-10)
  end
end
