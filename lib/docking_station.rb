require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes[rand]
  end

  def dock(bike)
    fail 'Dock full' if full?
    @bikes << bike
  end

  def bike
    @bikes
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

end
