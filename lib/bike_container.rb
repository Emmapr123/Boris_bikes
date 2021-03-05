module BikeContainer
    DEFAULT_CAPACITY = 20 

    attr_reader :capacity

    def initialize(capacity: DEFAULT_CAPACITY)
        @capacity = capacity
    end
    
    def receive_bikes(bikes)
        @bikes = bikes
    end

end