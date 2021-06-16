require "./lib/car"
require "./lib/train"

RSpec.describe Train do
  before :each do
    @train1 = Train.new({name: 'Thomas', type: 'Tank'})
  end

  describe "instantiation" do
    it "::new" do

      expect(@train1).to be_a(Train)
    end

    it "has attributes" do

      expect(@train1.name).to eq("Thomas")
      expect(@train1.type).to eq("Tank")
      expect(@train1.cargo).to eq({})
    end
  end
end
