require 'station.rb'

RSpec.describe Station do 
let(:name) { double :name }
let(:zone) { double :zone }


  it "will expose a name at initialization" do
    station = Station.new(:name, :zone)
    expect(station).to respond_to(:name)
  end
  
  it "will expose a zone at initialization" do
    station = Station.new(:name, :zone)
    expect(station).to respond_to(:zone)
  end

end 

