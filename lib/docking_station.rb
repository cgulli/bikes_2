class DockingStation

  def release_bike
    Bike.new
  end

  def accept(bike)
    @bike=bike
  end

  def bike
    @bike
  end
end

class Bike
  def working?
    true
  end
end
