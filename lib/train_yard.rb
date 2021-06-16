class TrainYard
  attr_reader :location,
              :trains

  def initialize(train_yard_info)
    @location = train_yard_info[:location]
    @trains = []
  end

  def add_train(train)
    @trains.push(train)
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq.sort
  end

  def trains_containing(car_type)
    @trains.find_all do |train|
      train.cargo.include?(car_type)
    end
  end

  def sorted_cargo_list
    @trains.flat_map do |train|
      train.cargo.flat_map do |key, value|
        key.type
      end
    end.uniq.sort
  end
end
