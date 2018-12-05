require 'station.rb'

RSpec.describe Station do 
# let(:name) { double :name }


  it "will expose a name at initialization" do
    station = Station.new("liverpool", "zone 2")
    expect(station).to respond_to(:name)
  end
  
  it "will expose a zone at initialization" do
    station = Station.new("liverpool", "zone 2")
    expect(station).to respond_to(:zone)
  end

end 

