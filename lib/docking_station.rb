class DockingStation
attr_reader :bikes
def initialize
  @bikes = []
end
  def release_bike
    fail 'No bike available' if station_empty?
    @bikes.pop
  end

  def accept(bike)
    fail 'Station is at capacity' if station_full?
    @bikes << bike
  end
end

class Bike
  def working?
    true
  end
end

private

def station_full?
  return true if @bikes.length >= 20
end

def station_empty?
  return true if @bikes.empty?
end
