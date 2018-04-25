require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "should be true if the citizen is more than 18 years old" do
      citizen = Citizen.new("", "", 19)
      expect(citizen.can_vote?).to eq(true)
    end

    it "should be true if the citizen is 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "should be false if the citizen is less than 18 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "should return the full name" do
      citizen = Citizen.new("John", "Lennon", 40)
      expect(citizen.full_name).to eq("John Lennon")
    end

    it "should return the full name for lower-cased inputs" do
      citizen = Citizen.new("john", "lennon", 40)
      expect(citizen.full_name).to eq("John Lennon")
    end

    it "should return the full name for upper-cased inputs" do
      citizen = Citizen.new("JOHN", "LENNON", 40)
      expect(citizen.full_name).to eq("John Lennon")
    end

    it "should return the full name for crazy-cased inputs" do
      citizen = Citizen.new("jOhN", "lEnNoN", 40)
      expect(citizen.full_name).to eq("John Lennon")
    end
  end
end
