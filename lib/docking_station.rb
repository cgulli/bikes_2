class DockingStation
  def release_bike
    Bike.new
  end
  def accept(bike)

  end
end

class Bike
  def working?
    true
  end
end
