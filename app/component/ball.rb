class Ball
  attr_gtk
  attr_sprite
  attr_accessor :dx, :dy, :alive

  MAX_Y = 700
  MAX_X = 1280

  def initialize args
    self.args = args
    @dx       = 2
    @dy       = 2
    @speed    = 20
    @alive    = true
  end

  def reset
    @x = 0
    @x = 1
    # TODO random direction
    @alive = true
  end

  def tick
    @y += @dy * @speed
    @x += @dx * @speed
    check_bounce_bottom_wall
    check_bounce_top_wall
    if @x < 0 || @x > MAX_X
      @alive = false
    end
  end

  private

  def check_bounce_top_wall
    if @y > MAX_Y
      change_vertical_direction
    end
  end

  def change_vertical_direction
    @dy *= -1
    @y += @dy * (@speed / 2) + 1
  end

  def check_bounce_bottom_wall
    if @y < 0
      change_vertical_direction
    end
  end
end
