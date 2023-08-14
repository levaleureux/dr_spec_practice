class Paddle
  attr_gtk
  attr_sprite
  attr_accessor :speed

  MAX_Y = 700

  def initialize args
    self.args = args
    @height   = 100
    @y        = MAX_Y / 2 + @height / 2
    @speed    = 10
  end

  def tick
    check_max_y
    check_min_y
  end

  def move_up
    @y += @speed
  end

  def move_down
    @y -= @speed
  end

  def max_y
    MAX_Y
  end

  def min_y
    0
  end

  private

  def check_max_y
    if @y > MAX_Y
      @y = max_y # + height
    end
  end

  def check_min_y
    if @y < 0
      @y = 0
    end
  end
end
