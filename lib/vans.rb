class Vans

    def pick_up(docks)
        @broken_bikes = docks.broken_bikes
    end 

    def release_broken_bikes
        @broken_bikes
    end 

    def receive_fixed_bikes(garage)
        @fixed_bikes = garage.release_bikes
    end 

    def drop_off
        @fixed_bikes
    end 

end
 
