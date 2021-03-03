require 'bike'

class DockingStation
  attr_reader :bike

  def dock(bike)
    fail 'No space at the ranch' if @bike
    @bike = bike
  end

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

end
