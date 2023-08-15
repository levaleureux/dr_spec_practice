spec "score" do

  before do |args, assert|
    @score = Score.new args
  end

  it "can up player one score" do
    # maybe just a += 1 for now
  end
  it "can up player two score" do
  end
  it "can reset score" do
    @score.player_1_points = 2
    @score.player_2_points = 4
    @score.reset
    expect(@score.player_1_points).to eq 0
    expect(@score.player_2_points).to eq 0
  end
end
