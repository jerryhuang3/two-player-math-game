
class Player 
    attr_reader :name, :lives, :life

    def initialize(player)
        @name = "Player #{player}"
        @lives = 3
        @life = "❤️"
    end


    def wrong
        @lives -= 1
    end
end

