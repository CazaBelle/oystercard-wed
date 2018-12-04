require 'oystercard.rb'

describe Oystercard do
  it "Does oystercard respond to balance method" do
    expect(subject.balance).to eq 0
  end

  context "Top up" do
    
    it "tops up card" do
      expect { subject.top_up(5) }.to change { subject.balance }.by(5)
    end

    it "raises an error if maximum balance is hit" do
      expect { subject.top_up(100) }.to raise_error "Max Balance reached"
    end
  end

  context "Deduct" do
    it "deducts money from card" do
    subject.top_up(20)
    expect { subject.deduct(5) }.to change { subject.balance}.by(-5)
    end
  end

  context "In Journey" do
    it { is_expected.to respond_to(:in_journey?) }

    it "checks if in use" do
    expect(subject.in_journey?).equal? true
      

    end
  end
end
