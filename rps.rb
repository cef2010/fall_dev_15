# Intro game to user
# prompt user for choice
# gets user choice
# generate computer choice
# compare to determine winner
# output results

# BONUS
# have game loop until player quit [x]
# organize as methods to call one another [ ]
# track score and games played [x]
# add lizard/spock [ ]

player_score = 0
cpu_score = 0
games = 0
begin
  choices = ['rock', 'paper', 'scissors']
  puts "-----------\nChoose one!\n-----------\nRock\tPaper\tScissors"
  player = gets.chomp.downcase
  cpu = choices.sample
  if player == cpu
    puts "We both threw #{cpu}: Tie!"
  elsif ((player == 'rock') && (cpu == 'scissors')) || ((player == 'paper') && (cpu == 'rock')) || ((player == 'scissors') && (cpu == 'rock'))
    puts "You threw #{player} and I threw #{cpu}: You Win!"
    player_score += 1
  elsif ((cpu == 'rock') && (player == 'scissors')) || ((cpu == 'paper') && (player == 'rock')) || ((cpu == 'scissors') && (player == 'rock'))
    puts "You threw #{player} and I threw #{cpu}: You Lose!"
    cpu_score += 1
  else
    puts "Pick another!"
    games -= 1
  end
  games += 1

  puts "-----------\nGAMES: #{games}\n-----------\nYOU: #{player_score}\nCPU: #{cpu_score}"
  puts "-----------\nPlay Again?\n    y/n    \n-----------"
  again = gets.chomp.downcase
end while again == 'y'
