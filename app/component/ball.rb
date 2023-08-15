class Ball
  attr_gtk
  attr_sprite
  attr_accessor :point, :dx, :dy, :alive

  MAX_Y =  720
  MAX_X = 1280

  def initialize args
    self.args = args
    @point    = 20
    @dx       = 2
    @dy       = 2
    @speed    = 20
    @alive    = true
  end

  def reset
    @x  = max_x / 2
    @y  = max_y / 2
    @dx = 1.randomize :sign
    @dy = 1.randomize :sign
  end

  def tick
    @y += @dy * @speed
    @x += @dx * @speed
    check_bounce_bottom_wall
    check_bounce_top_wall
    check_if_it_out
  end

  def out_on_left
    !@alive && @x < 0
  end

  private

  def check_if_it_out
    if @x < 0 || @x > max_x
      @alive = false
    end
  end

  def max_x ; MAX_X end

  def may_y ; MAY_Y end

  def check_bounce_top_wall
    if @y > max_y
      change_vertical_direction
    end
  end

  def change_vertical_direction
    @dy *= -1
    @y  += @dy * (@speed / 2) + 1
  end

  def check_bounce_bottom_wall
    if @y < 0
      change_vertical_direction
    end
  end
end
