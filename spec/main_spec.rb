spec "test game" do

  it "test the game" do |args, assert|
    args.state.game ||= Game.new args
    args.state.game.args = args
     puts "hello"
     expect(1).to eq 1
  end

end

run_specs
