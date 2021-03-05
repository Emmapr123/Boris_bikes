 require 'vans'
 require 'bike'
 
 class Garage


    def receive_bikes(vans)
        @broken_bikes = vans.release_broken_bikes
    end 

    def fix_bikes
        @fixed_bikes = @broken_bikes.each { |bike| bike.broken = false }
    end 

    def release_bikes 
        @fixed_bikes
    end 
 end 