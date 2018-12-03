require 'oystercard.rb'

describe Oystercard do
  it "Does oystercard respond to balance method" do
    subject = Oystercard.new
    expect(subject.balance).to eq 0
  end

  it "tops up card" do
    subject = Oystercard.new
    expect { subject.top_up(5) }.to change { subject.balance }.by(5)
  end
end
