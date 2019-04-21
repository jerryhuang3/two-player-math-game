require "./player"

class Questions
attr_reader :active_player

    def initialize(player)
        @active_player = player
    end

    def ask
        puts "what is 1 + 1?"
        input = answer
        validate = verify(input)
    end

    def answer
        puts "Please enter your answer"
        answer = gets.chomp.to_i
    end

    def verify(answer)
        if answer != 2
            puts "Wrong Answer"
            @active_player.wrong
            puts "#{@active_player.name} has #{@active_player.lives} lives left"
      

        else
            puts "CORRECT"
            puts "#{@active_player.name} has #{@active_player.lives} lives left"
    
        end
    end

end