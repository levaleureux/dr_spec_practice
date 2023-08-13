require "app/component/game.rb"

def tick args
  args.state.game ||= Game.new args
  args.state.game.args = args
  args.state.game.tick
  if args.inputs.keyboard.key_down.escape
    args.gtk.request_quit
  end
  reset_game args if args.inputs.keyboard.key_down.r
  # Demonstration of the Size Parameter
  args.outputs.labels << [175 + 150, 610 - 50, "Smaller label.",  -2]
  args.outputs.labels << [175 + 150, 580 - 50, "Small label.",    -1]
  args.outputs.labels << [175 + 150, 550 - 50, "Medium label.",    0]
  args.outputs.labels << [175 + 150, 520 - 50, "Large label.",     1]
  args.outputs.labels << [175 + 150, 490 - 50, "Larger label.",    2]
end

def reset_game args
  args.state.game = nil
  $gtk.reset
  puts "Game reseted"
end
