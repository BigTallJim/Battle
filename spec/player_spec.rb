require 'player'

describe Player do
  let(:bill) { Player.new("Bill") }

  it "returns a player's name" do
    expect(bill.name).to eq("Bill")
  end
end
