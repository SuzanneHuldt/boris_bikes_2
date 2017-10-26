require_relative './bike.rb'

class DockingStation
  attr_reader :bikes, :capacity

  public
  def initialize(capacity = 20)
      @bikes = []
      @capacity = capacity
  end

  def release_bike
    fail "No bikes" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Full" if full?
    @bikes << bike
  end

  def empty?
    @bikes.empty?
  end

  def number_bikes
    @bikes.length
  end

  private
  def full?
    @bikes.length >= @capacity
  end
end
