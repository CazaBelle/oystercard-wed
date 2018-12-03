require 'oystercard.rb'

describe Oystercard do
  it "Does oystercard respond to balance method" do
    subject = Oystercard.new
    expect(subject.balance).to eq 0
  end
end
