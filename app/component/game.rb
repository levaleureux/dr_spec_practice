require "app/component/score.rb"

class Game
  attr_gtk
  #attr_sprite
  attr_accessor :point

  def initialize args
    self.args = args
    @point = 20
  end

  def tick
  end

  private

end
