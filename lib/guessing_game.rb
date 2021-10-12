require "byebug"

class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end

    def num_attempts
        @num_attempts
    end

    def game_over?
        @game_over
    end

    def check_num(number)
        @num_attempts += 1

        if number == @secret_num
            @game_over = true
            print "You win"
        elsif number > @secret_num
            print "Too big"
        else
            print "Too small"
        end
    end

    def ask_user
        print "Enter a number: "
        number = gets.chomp.to_i
        check_num(number)
    end
end
