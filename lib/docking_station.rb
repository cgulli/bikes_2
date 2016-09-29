class DockingStation
attr_reader :bikes
def initialize
  @bikes = []
end
  def release_bike
    fail 'No bike available' if @bikes.empty?
    @bikes.pop
  end

  def accept(bike)
    fail 'Station is at capacity' if @bikes.length >= 20
    @bikes << bike
  end

end

class Bike
  def working?
    true
  end
end
