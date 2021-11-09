players = [ 
            {
              name: 'Player 1', 
              wins: 3, 
            }, 
            
            {
              name: 'Player 2', 
              wins: 3, 
            }
          ]

def add(number1, number2)
  result = number1 + number2
  result
end

def display_score(players)
  puts "P1: #{players[0][:wins]}/3 vs P2: #{players[1][:wins]}/3 "
end

def winner(players)
  if players[0][:wins] > players[1][:wins]
    "#{players[0][:name]} wins with a score of #{players[0][:wins]}/3"
  else
    "#{players[1][:name]} wins with a score of #{players[1][:wins]}/3"
  end
end

while players[0][:wins] > 0 && players[1][:wins] > 0

  players. each { |player| 
    number1 = rand(0..10)
    number2 = rand(0..10)
    puts "#{player[:name]} What does #{number1} plus #{number2} equal?"
    answer = gets.chomp.to_i
    if answer == add(number1, number2)
      puts "#{player[:name]} YES! You are correct."
      display_score(players)
    else
      puts "#{player[:name]} Seriously? No!"
      player[:wins] -= 1
      display_score(players)
    end

    if player[:wins] != 0
      puts 
      puts "----New Turn----"
      puts
    else
      puts
      puts winner(players)
      puts "----Game Over----"
      puts
      break
    end
  }

end

