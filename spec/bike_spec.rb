require 'bike'

describe Bike do
  describe 'working?' do
    it 'responds to status' do
      expect(subject).to respond_to(:working?)
    end
  end
end
