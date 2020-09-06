class Airport
  DEFAULT_CAPACITY = 20 

  attr_accessor :capacity
  attr_accessor :planes

  def initialize 
    @capacity = DEFAULT_CAPACITY
    @planes = []
  end

  def add_plane
    fail 'The hangar is full.' if full?
    @planes << "plane" #update to be plane name?
  end

  def remove_plane
    @planes.pop
  end

  def full?
    @planes.count >= capacity
  end
end