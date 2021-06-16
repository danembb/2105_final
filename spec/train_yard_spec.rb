require "./lib/car"
require "./lib/train"
require './lib/train_yard'

RSpec.describe TrainYard do
  before :each do
    @train_yard = TrainYard.new({location: 'Brighton'})
  end

  describe "initialize" do
    it "::new" do

      expect(@train_yard).to be_a(TrainYard)
    end

    it "has attributes" do

      expect(@train_yard.location).to eq("Brighton")
    end
  end
end
