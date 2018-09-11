require "./player.rb"
require "./game.rb"

players = [Player.new("Player 1", 3, "P1"), Player.new("Player 2", 3, "P2")]
mathGame = Game.new
gameover = false

cyclePlayers = players.cycle
current_player = cyclePlayers.next

while !gameover

  mathGame.playMath(current_player);
  userInput = gets.chomp

  if userInput == "exit"
    gameover = true
  else
    if mathGame.checkResult(userInput.to_i)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "Seriously? NO!"
      current_player.loseLife(1)
    end

    mathGame.printResults(players)
    if (current_player.life < 1)
      current_player = cyclePlayers.next
      gameover = true
      puts
      puts "----- GAME OVER -----"
      puts "#{current_player.name} wins with a score of #{current_player.life}/3"
    else
      puts
      puts "----- NEW TURN -----"
      current_player = cyclePlayers.next
    end
  end

end
