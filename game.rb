require "./player"
require "./question"

class Game

    def initialize
        @p1 = Player.new(1)
        @p2 = Player.new(2)
    
    end

    def play
        active_player = @p1
        while(!end_game)
            
            puts "CURRENT ACTIVE PLAYER IS #{active_player.name}"
            q = Questions.new(active_player)
            q.ask
            if active_player == @p1
                active_player = @p2
            else 
                active_player = @p1
            end
        end
        
        
        if @p1.lives == 0  
            puts 'Game over! Player 2 WINS'
        else 
            puts 'Game over! Player 1 WINS'
        end
    end


    def end_game
        @p1.lives == 0 || @p2.lives == 0
    end

end

