spec "paddle" do

  before do |args, assert|
    @paddle = Paddle.new args
  end

  it "start at vertical center"
  it "can move up" do |args, assert|
    old_y = @paddle.y
    @paddle.move_up
    expect(@paddle.y).to eq old_y + @paddle.speed
  end
  it "can move down" do
    old_y = @paddle.y
    @paddle.move_up
    expect(@paddle.y).to eq old_y + @paddle.speed
  end
  it "have a max up" do
    @paddle.y = @paddle.max_y - 15
    @paddle.move_up
    @paddle.move_up
    @paddle.tick
    expect(@paddle.y).to eq @paddle.max_y
  end
  it "have a max down" do
    @paddle.y = 15
    @paddle.move_down
    @paddle.move_down
    @paddle.tick
    expect(@paddle.y).to eq @paddle.min_y
  end
end
