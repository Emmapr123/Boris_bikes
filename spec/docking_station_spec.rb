require 'docking_station'

describe DockingStation do

  describe 'release_bike' do
    it 'responds to release_bike' do
      expect(subject).to respond_to(:release_bike)
    end

    # it 'make a new bike' do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end

    it 'raises an error when no bikes are available' do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe 'dock' do
    it 'docks a bike' do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it 'takes bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
  end

end
