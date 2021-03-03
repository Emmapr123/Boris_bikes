require 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = 20
  end

  def capacity(capacity)
     @capacity = capacity
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
    @bikes.count >= @capacity
  end

end
