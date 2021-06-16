require "./lib/car"

RSpec.describe Car do
  describe "instantiation" do
    it "::new" do
      car1 = Car.new({type: "Mail", weight: 5})

      expect(car1).to be_a(Car)
    end
  end
end
