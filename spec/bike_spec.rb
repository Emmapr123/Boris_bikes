require "bike"

describe Bike do

  describe "broken" do
    it { is_expected.to respond_to :broken? }

    it "checks if broken" do
      subject.report_broken
      expect(subject.broken?).to eq true
    end
  end
end
