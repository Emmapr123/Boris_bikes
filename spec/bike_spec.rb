require 'bike'

describe Bike do
  describe 'status' do
    it 'responds to status' do
      expect(subject).to respond_to(:status)
    end
  end
end
