require_relative 'bike'

class DockingStation

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.count == 0
    @bikes[rand]
  end

  def dock(bike)
    fail 'Dock full' if @bikes.count >= 20
    @bikes << bike
  end

  def bike
    @bikes
  end
end
