require 'oystercard.rb'

describe Oystercard do

  let(:station) { double :station }

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

  context "In Journey" do
    it { is_expected.to respond_to(:in_journey) }

    it "checks if in use" do
    expect(subject.in_journey).to eq false
    end
  end

  context "touch in" do

    it 'raises an error if balance is less than minimum fare' do
      expect { subject.touch_in(:station) }.to raise_error "Balance less than minimum fare"
    end

    it 'stores the entry station' do
      subject.top_up(2)
      subject.touch_in(:station)
      expect(subject.entry_station).equal?(:station)
    end  
  end

  context "touch out" do
    card = Oystercard.new
    card.top_up(2)
    card.touch_in(:station)

    it "should deduct minimum fare from balance" do
      expect { card.touch_out }.to change { card.balance }.by(-1)
    end

    it "should forget entry station" do
      card.touch_out
      expect(card.entry_station).to be_nil
    end

  end
end
