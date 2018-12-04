class Oystercard

attr_reader :balance
attr_reader :in_journey
attr_reader :entry_station
MAX_BALANCE = 90
MIN_FAIR = 1

  def initialize
    @balance = 0
    @entry_station = nil
    @in_journey = false
  end

  def top_up(value)
    raise "Max Balance reached" if @balance + value >= MAX_BALANCE
    @balance += value
  end


  def touch_in(entry_station)
    raise "Balance less than minimum fair" if @balance < MIN_FAIR
    @entry_station = entry_station
    @in_journey = true
  end

  def touch_out
    deduct(MIN_FAIR)
    @in_journey = false
  end

  private
  def deduct(value)
    @balance -= value
  end

end
