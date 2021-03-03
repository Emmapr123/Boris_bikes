require 'docking_station'

describe DockingStation do

  describe 'capacity' do
    it 'responds to capacity' do
      expect(subject.capacity(20)).to eq 20
    end
  end

  describe 'release_bike' do
    it 'responds to release_bike' do
      expect(subject).to respond_to(:release_bike)
    end

    it 'dont give no bike if bike be broken' do
      subject.report_broken
      expect{subject.release_bike}.to raise_error 'Bike dont be wheeling'
    end
    # it 'make a new bike' do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end
  #
  #   it 'raises an error when no bikes are available' do
  #     expect{subject.release_bike}.to raise_error 'No bikes available'
  #   end
  end

  describe 'dock' do
    # it 'docks a bike' do
    #   expect(subject).to respond_to(:dock).with(1).argument
    # end

    # it 'takes bike' do
    #   bike = Bike.new
    #   expect(subject.dock(bike)).to eq bike
    # end

    it 'raises an error when theres 20 bikes' do
      subject.fix_bike
      p subject
      20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'No space at the ranch'
    end

    it 'done take them broken bikes' do
      subject.report_broken
      expect{subject.dock(bike)}.not_to raise_error 'No space at the ranch'
    end

  end

  describe 'report_broken' do
    it 'if bike is reported broken' do
    expect(subject.report_broken).to eq true
    end
  end
end
