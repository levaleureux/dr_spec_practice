require "app/component/score.rb"
require "app/component/paddle.rb"
require "app/component/paddle.rb"

class Game
  attr_gtk

  attr_accessor :point

  def initialize args
    self.args = args
    @ball     = Ball.new args
    @paddle_1 = Paddle.new args
    @paddle_2 = Paddle.new args
    @score    = Score.new args
  end

  def tick
    check_if_some_mark_a_point
    elements.each do |element|
      element.args = args
      element.tick
    end
  end

  def elements
    [@ball, @paddle_1, @paddle_2, @score]
  end

  def check_if_some_mark_a_point
    if ball.alive == false
      increment_score
      ball.reset
    end
  end

  private

  def increment_score
    if ball.out_on_left
      @score.player_2_points += 1
    else
      @score.player_1_points += 1
    end
  end
end

