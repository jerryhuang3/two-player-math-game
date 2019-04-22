require './player'
require './question'

class Game

    def initialize
        @p1 = Player.new(1)
        @p2 = Player.new(2)
    end

    def play
        puts ''
        puts "Player 1: #{@p1.lives} lives | Player 2: #{@p2.lives} lives"

        active_player = @p1
        while(!end_game)
            puts ''
            puts "--------#{active_player.name}'s Turn---------"
            puts ''
            q = Questions.new(active_player)
            q.ask
            if active_player == @p1
                active_player = @p2
            else 
                active_player = @p1
            end
        end
        
        if @p1.lives == 0  
            puts ''
            puts 'Player 1 has died.'
            puts 'Game over! Player 2 Wins!'
        else 
            puts ''
            puts 'Player 2 has died.'
            puts 'Game over! Player 1 Wins!'
        end
    end

    def end_game
        @p1.lives == 0 || @p2.lives == 0
    end

end

