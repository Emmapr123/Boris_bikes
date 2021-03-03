require 'bike'

class DockingStation
  attr_reader :bikes, :capacity

  def initialize
    @bikes = []
    @capacity = 20
    @broken = false
  end

  def capacity(capacity)
     @capacity = capacity
  end

  def dock(bike)
    unless @broken
      fail 'No space at the ranch' if full?
    end
    @bikes << bikes
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

  def fix_bike
    @broken = false
  end

  def release_bike
    fail 'Bike dont be wheeling' if broken?
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
