require 'bike_container_test'

describe BikeContainerTest do
    it { is_expected.to respond_to :receive_bikes }
    describe "#receive_bikes" do
        it "should receive bikes from an array" do
            bike = double(:bike)
            expect(subject.receive_bikes(bike)).to eq bike
        end
    end
    describe '#limit_capacity' do
    it 'should have a limited capacity' do
        expect(subject.capacity).to eq 20
    end
end

end