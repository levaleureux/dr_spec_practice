spec "ball" do

  before do |args, assert|
    @ball    = Ball.new args
    @ball.dx = 0.9
    @ball.x  = 100
    @ball.y  = 100
  end

  it "have a direction" do
    expect(@ball.dx).not_to be_nil
    expect(@ball.dy).not_to be_nil
  end
  context "go to bottom wall" do
    before do |args, assert|
      # TODO before block is buggy
      # when there is more than 1
    end
    it "bounce on bottom wall" do
      @ball.dy = -0.9
      #puts " before #{@ball.dy}".green
      expect(@ball.dy).to be_less_than 0
      7.times {@ball.tick }
      expect(@ball.dy).to be_greater_than 0
    end
  end
  context "go to top wall" do
    it "bounce on top wall" do
      @ball.dy = 0.9
      @ball.y  = 650
      expect(@ball.dy).to be_greater_than 0
      7.times {@ball.tick }
      expect(@ball.dy).to be_less_than 0
    end
  end
  context "go touch the right wall" do
    it "is not alive any more" do
      @ball.x  = 1200
      @ball.dx = 0.9
      @ball.dy = 0.1
      expect(@ball.alive).to be_truthy
      7.times {@ball.tick }
      expect(@ball.alive).to be_falsy
    end
  end
  context "go touch the left wall" do
    it "is not alive any more" do
      @ball.x  = 20
      @ball.dx = -0.9
      @ball.dy = 0.1
      expect(@ball.alive).to be_truthy
      7.times {@ball.tick }
      expect(@ball.alive).to be_falsy
    end
  end
end
