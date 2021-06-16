class Train
  attr_reader :name,
              :type,
              :cargo

  def initialize(train_info)
    @name = train_info[:name]
    @type = train_info[:type]
    @cargo = Hash.new(0)
  end

  def count_cars(car_type)
    @cargo[car_type]
  end

  def add_cars(car_type, quantity)
    @cargo[car_type] += quantity
  end

  def weight
    @cargo.sum do |car_type, quantity|
      car_type.weight * quantity
    end
  end

end
