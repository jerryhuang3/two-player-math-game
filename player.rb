
class Player 
    attr_reader :name, :lives

    def initialize(player)
        @name = "Player ##{player}"
        @lives = 3
    end

    def wrong
        @lives -= 1
    end
end

