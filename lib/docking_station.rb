require 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'No space at the ranch' if full?
    @bikes << bikes
  end

  def release_bike
    fail 'No bikes available' unless empty?
    @bikes.pop
  end

private

  def empty?
    bikes.empty?
  end

  def full?
    @bikes.count >= 20
  end

end
