require "app/component/score.rb"
require "app/component/ball.rb"
require "app/component/paddle.rb"

class Game
  attr_gtk

  attr_accessor :point

  def initialize args
    self.args = args
    @point = 20
  end

  def tick
  end

  private

end
