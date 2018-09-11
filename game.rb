class Game
  @@result

  def playMath(player)
    a,b = rand(20), rand(20)
    @@result = a + b
    puts "#{player.name}: What does #{a} plus #{b} equals"
  end

  def checkResult(answer)
    if answer == @@result
      return true
    end
  end

  def printResults(players)
    puts "#{players[0].nickname}: #{players[0].life}/3 vs #{players[1].nickname}: #{players[1].life}/3"
  end
end