require 'docking_station'

describe DockingStation do

  describe 'release_bike' do
    it 'responds to release_bike' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'make a new bike' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  end

end
