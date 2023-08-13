spec "test game" do

  it "test the game" do |args, assert|
    args.state.game ||= Game.new args
    args.state.game.args = args
     puts "hello"
     expect(1).to eq 1
     expect(args.state.game.point).to eq 20
  end

  it "test the game" do |args, assert|
    args.state.game ||= Score.new args
    args.state.game.args = args
    puts "haahaha".red
    expect(1).to eq 1
    expect(args.state.game.point).to eq 20
  end
end

run_specs
