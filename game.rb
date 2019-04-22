require './player'
require './question'

class Game

    def initialize
        @p1 = Player.new(1)
        @p2 = Player.new(2)
    end

    def play
        active_player = @p1
        while(!end_game)
            puts ''
            puts "Player 1: #{@p1.life * @p1.lives}  | Player 2: #{@p2.life * @p2.lives}"
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
            puts 'Game over! Player 2 wins!'
        else 
            puts ''
            puts 'Player 2 has died.'
            puts 'Game over! Player 1 wins!'
        end
    end

    def end_game
        @p1.lives == 0 || @p2.lives == 0
    end

end

