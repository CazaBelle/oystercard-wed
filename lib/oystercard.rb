class Oystercard

  attr_reader :balance, :entry_station, :exit_station, :journey
   
  MAX_BALANCE = 90
  MIN_FARE = 1

  def initialize
    @balance = 0
    @entry_station = nil
    @journey = { :entry_station => :exit_station }
  end

  def top_up(value)
    raise "Max Balance reached" if @balance + value >= MAX_BALANCE
    @balance += value
  end


  def touch_in(entry_station)
    raise "Balance less than minimum fare" if @balance < MIN_FARE
    @entry_station = entry_station
  end

  def touch_out(exit_station)
    deduct(MIN_FARE)
    @exit_station = exit_station
    @journey[:entry_station] = :exit_station 
  end

  def in_journey
    entry_station != nil ? true : false
  end

  private
  def deduct(value)
    @balance -= value
  end

end
