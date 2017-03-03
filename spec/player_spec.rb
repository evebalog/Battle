require 'player'

describe Player do
  #  subject(:player) {described_class.new(player1_name)}
  describe 'player name' do
    subject(:eva){Player.new("Eva")}
    subject(:katie){Player.new("Katie")}

    it "should return the player's name" do
      expect(eva.name).to eq("Eva")
    end

    it "should return hit points" do
      expect(katie.hitpoints).to eq Player::DEFAULT_HIT_POINTS
    end

    it 'damages the player' do
      expect(katie).to receive(:damage)
      eva.attack(katie)
    end

    it "reduce a player's hit points by 10" do
      expect{ eva.damage }.to change { eva.hitpoints }.by -10
    end

  end
end
