require 'player'

describe Player do
#  subject(:player) {described_class.new(player1_name)}
  describe 'player name' do
    subject(:player){Player.new("Eva")}

    it "should return the player's name" do
      expect(player.name).to eq("Eva")
    end
    
  end
end
