require 'oystercard.rb'

describe Oystercard do
  it "Does oystercard respond to balance method" do
    subject = Oystercard.new
    expect(subject.balance).to eq 0
  end

  context "Top up" do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it "tops up card" do
      subject = Oystercard.new
      expect { subject.top_up(5) }.to change { subject.balance }.by(5)
    end

    it "raises an error if maximum balance is hit" do
      subject = Oystercard.new
      expect { subject.top_up(100) }.to raise_error "Max Balance reached"
    end
  end
end
