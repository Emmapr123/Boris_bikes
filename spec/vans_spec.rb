require 'vans'
require 'docking_station'
require 'bike'

describe Vans do
let(:bike) { Bike.new }
let(:docks) { DockingStation.new }
let(:garage) { Garage.new }
  it { is_expected.to respond_to :pick_up }

  describe 'pick_up' do
    it 'should pick up the bikes' do 
        3.times { docks.dock(Bike.new) } 
        bike.report_broken
        docks.dock(bike)
        expect(subject.pick_up(docks)).to eq [bike]
    end 
  end 

  describe 'receive_fixed_bikes' do
  it 'should receive fixed bikes from the garage' do
    3.times { docks.dock(Bike.new) } 
        bike.report_broken
        docks.dock(bike)
        subject.pick_up(docks)
        garage.receive_bikes(subject)
        garage.fix_bikes
    expect(subject.receive_fixed_bikes(garage)).to eq [bike]
    end 
end 

    describe 'drop_off' do
        it 'should drop of fixed bikes at docking stations' do
        3.times { docks.dock(Bike.new) } 
        bike.report_broken
        docks.dock(bike)
        subject.pick_up(docks)
        garage.receive_bikes(subject)
        garage.fix_bikes
        subject.receive_fixed_bikes(garage)
        expect(subject.drop_off).to eq [bike]
        end
    end
end
 
