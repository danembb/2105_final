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
  end
end
