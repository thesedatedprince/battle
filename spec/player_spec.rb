require "player"

describe Player do
  subject(:player) { described_class.new("name") }

  describe "#name" do
    it "contains a players name" do
      expect(subject.name).to eq "name"
    end
  end

  describe "#points_damage" do
    it 'reduces the player hit points' do
      expect{subject.points_damage}.to change {subject.points}.by(-10)
    end
  end
end
