class Oystercard

attr_reader :balance
MAX_BALANCE = 90

  def initialize
    @balance = 0
  end

  def top_up(value)
    raise "Max Balance reached" if @balance + value >= MAX_BALANCE
    @balance += value
  end

  def deduct(value)
    @balance -= value
  end

end
