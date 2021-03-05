require "bike"

class DockingStation
  attr_reader :bike, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike = []
    @bikes = Bike.new
    @capacity = capacity
    @broken = []
  end

  def release_bike
    fail 'No bikes left' if empty?
    fail "This bike is broken" if @bike.first.broken?
    @bike.pop
  end

  def dock(bike)
    fail 'There is already a bike here' if full?
    @bike << bike
  end

  def broken_bikes 
    @broken = @bike.select { |b| b.broken? }
  end

  def receive_fixed_bikes(bikes)
    bikes.each { |bike| dock(bike) }
  end 

  private
  def empty?
    @bike.empty?
  end

  def full?
    @capacity == @bike.count
  end
end
