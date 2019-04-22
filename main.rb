require './game'

game = Game.new

puts 'Welcome to the Two-O-Player Math Game!'
puts 'This is a turn based two player addition game.'
puts 'Each player must type the correct answer to the math problem.'
puts 'Be careful! You only have 3 lives!'
print "Type 'go' to start the game: "

ready = gets.chomp

if ready == 'go'
    game.play
else
    puts 'Not ready? Goodbye!'
end
