require 'docking_station'
require 'bike'

describe DockingStation do
  let(:bike) { Bike.new }

  describe 'release_bike' do
    it { is_expected.to respond_to :release_bike }

    it "releases bike" do
      @bike = subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
 
    it "raises error 'no bikes left' when there are no bikes" do
      expect { subject.release_bike }.to raise_error "No bikes left"
    end

    it "raises error 'this bike is broken' when the bike is broken" do
      bike = double(:bike, broken?: true)
      subject.dock bike
      expect { subject.release_bike }.to raise_error "This bike is broken"
    end
  end
  
  describe "dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docking bike' do
      expect(subject.dock(bike)).to eq [bike]
    end

    it "limits number of bikes" do
      subject.capacity.times { subject.dock(bike) }
      expect {subject.dock bike}.to raise_error "There is already a bike here"
    end
  end

  describe 'receive_fixed_bikes' do
    it 'should receive fixed bikes from the van' do
      
      expect(subject.receive_fixed_bikes([bike])).to eq [bike]
    end 
  
  end 
end
