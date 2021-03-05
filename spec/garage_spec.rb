require 'garage'
require 'vans'
require 'bike'
require 'docking_station'

describe Garage do 
let(:vans) { Vans.new }
let(:bike) { Bike.new }
let(:docks) { DockingStation.new }
    it { is_expected.to respond_to :fix_bikes }

    describe 'fix_bikes' do
        it 'should fix our broken bikes' do
            3.times { docks.dock(Bike.new) } 
            bike.report_broken
            docks.dock(bike)
            vans.pick_up(docks)
            subject.receive_bikes(vans)
            expect(subject.fix_bikes).to eq [bike]
        end 
    end 
end 