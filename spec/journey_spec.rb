require 'journey.rb'

describe Journey do

  it 'accepts entry station on initialization' do
    journey = Journey.new("Aldgate")
    expect(journey.entry_station).to eq "Aldgate"
  end

  it 'accepts exit_station when Oystercard touches out' do
    journey = Journey.new("Aldgate", "Whitechapel")
    expect(journey.exit_station).to eq "Whitechapel"
  end

  context 'journey history' do
    journey_1 = Journey.new("Aldgate", "Whitechapel")
  
    # it 'should be empty on initialization' do
    #   expect(journey_1.journey).to be_empty
    # end

    it 'should store one journey' do
      # card = Oystercard.new
      # card.top_up(2)
      # card.touch_in("Aldgate")
      # card.touch_out("Whitechapel")
      expect(journey_1.journey).equal?({"Aldgate" => "Whitechapel"})
    end

  end

end