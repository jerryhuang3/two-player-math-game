require './player'

class Questions
attr_reader :active_player, :first_num, :second_num, :answer

    def initialize(player)
        @active_player = player
    end

    def ask
        num_gen
        print "What does #{@first_num} plus #{@second_num} equal? "
        input = player_input
        validate = verify(input)
    end

    def player_input
        input = gets.chomp.to_i
    end

    def num_gen
        @first_num = Random.new.rand(9999)
        @second_num = Random.new.rand(9999)
        @answer = first_num + second_num
    end

    def verify(input)
        if input != @answer
            puts ''
            puts 'Wrong!'
            @active_player.wrong
            puts "#{@active_player.name} has #{@active_player.lives} lives left."
        else
            puts ''
            puts "#{active_player.name} is correct!"
            puts ''
        end
    end

end