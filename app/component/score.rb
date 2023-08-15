
class Score
  attr_gtk
  attr_accessor :player_1_points, :player_2_points

  def initialize args
    self.args = args
    reset
  end

  def tick
  end

  def reset
    @player_1_points = 0
    @player_2_points = 0
  end

  # TODO render method
  private

end
