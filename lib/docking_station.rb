require 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'No space at the ranch' if @bikes.count >= 20
    @bikes << bikes
  end

  def release_bike
    fail 'No bikes available' unless @bikes.empty?
    @bikes.pop
  end

end
