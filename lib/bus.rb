class Bus
  attr_reader :name,
              :capacity,
              :passengers,
              :yell_at_passengers,
              :number_of_passengers

  def initialize (bus_name, bus_capacity)
    @name = bus_name
    @capacity = bus_capacity
    @passengers = []
    @yell_at_passengers = []
  end

  def add_passenger(passenger_name)
    @passengers << passenger_name
    @yell_at_passengers << passenger_name.upcase
    @number_of_passengers = @passengers.length
  end

  def over_capacity?
    if @number_of_passengers > @capacity
      true
    else
      false
    end
  end

  def kick_out
    @passengers.shift
    @number_of_passengers = @passengers.length
  end
end
