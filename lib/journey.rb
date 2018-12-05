require 'oystercard'
require 'station'

class Journey

  attr_reader :journey, :entry_station, :exit_station

  def initialize(entry_station, exit_station = "Not touched out")
    @journey = {}
    @entry_station = entry_station
    @exit_station = exit_station
  end

  def journey
    @journey[@entry_station] = @exit_station
    @journey
  end

end