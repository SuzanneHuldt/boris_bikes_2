require_relative './docking_station'

class Bike
  attr_reader :dock_status
  def initialise(dock_status)
    @dock_status = dock_status
  end
  def working?
  end
end
